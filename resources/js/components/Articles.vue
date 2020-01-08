<template>
  <div>
    <h2>Articles</h2>

    <!-- Pagination -->
    <nav aria-label="Page navigation">
      <ul class="pagination">
        <!-- v-bind class disables if there is no previous or next page -->
        <li v-bind:class="[{ disabled: !pagination.prev_page_url }]" class="page-item">
          <a class="page-link" href="#" @click="fetchArticles(pagination.prev_page_url)">Previous</a>
        </li>
        <!-- Shows which page is being shown -->
        <li class="page-item disabled">
          <a class="page-link text-dark" href="#">
            Page {{ pagination.current_page }} of
            {{ pagination.last_page }}
          </a>
        </li>

        <li v-bind:class="[{ disabled: !pagination.next_page_url }]" class="page-item">
          <a class="page-link" href="#" @click="fetchArticles(pagination.next_page_url)">Next</a>
        </li>
      </ul>
    </nav>

    <!-- Article Cards -->
    <div class="card card-body mb-2" v-for="article in articles" v-bind:key="article.id">
      <h3>{{ article.title }}</h3>
      <p>{{ article.body }}</p>
      <hr>
      <button @click="deleteArticle(article.id)" class="btn btn-danger">Delete</button>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    // Returning a state
    return {
      articles: [],
      article: {
        id: "",
        title: "",
        body: ""
      },
      article_id: "", // Used for PUT request to the API
      pagination: {},
      edit: false // Same form is going to be to used for add and edit
    };
  },

  // Runs when the window loads
  created() {
    this.fetchArticles();
  },

  methods: {
      
    fetchArticles(page_url) {
      let vm = this;
      page_url = page_url || "api/articles"; // Used for pagination
      fetch(page_url)
        .then(result => result.json())
        .then(res => {
          // Assigning articles to articles array
          this.articles = res.data;
          vm.makePagination(res.meta, res.links);
        })
        .catch(err => console.log(err));
    },

    makePagination(meta, links) {
      let pagn = {
        current_page: meta.current_page,
        last_page: meta.last_page,
        next_page_url: links.next,
        prev_page_url: links.prev
      };

      this.pagination = pagn;
    },

    deleteArticle(id) {
        if(confirm('Are you sure?')) {
            fetch(`api/article/${id}`, {
                method: 'delete'
            }).then(result => result.json()).then(data => {
                alert('Article Removed');
                this.fetchArticles();
            })
            .catch(err => console.log(err));
        }
    }

  }
};
</script>
