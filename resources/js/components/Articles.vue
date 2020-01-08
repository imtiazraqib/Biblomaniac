<template>
  <div>
    <h2 class="text-white">Articles</h2>

    <!-- Bootstrap Alerts -->

    <!-- Article Added Alert -->
    <div
      v-if="alertType === 'add'"
      class="alert alert-success alert-dismissible fade show"
      role="alert"
    >
      <slot>Article has been added</slot>
      <button
        @click="alertType = 'none'"
        type="button"
        class="close"
        data-dismiss="alert"
        aria-label="Close"
      >
        <span aria-hidden="true">&times;</span>
      </button>
    </div>

    <!-- Article Deleted Alert -->
    <div
      v-else-if="alertType === 'delete'"
      class="alert alert-danger alert-dismissible fade show"
      role="alert"
    >
      <slot>Article has been deleted</slot>
      <button
        @click="alertTpe = 'none'"
        type="button"
        class="close"
        data-dismiss="alert"
        aria-label="Close"
      >
        <span aria-hidden="true">&times;</span>
      </button>
    </div>

    <!-- Article Editing Process Alert -->
    <div
      v-else-if="alertType === 'edit_process'"
      class="alert alert-info fade show"
      role="alert"
    >
      <slot>Editing article</slot>
    </div>

    <!-- Article Edited Alert -->
    <div
      v-else-if="alertType === 'edit'"
      class="alert alert-warning alert-dismissible fade show"
      role="alert"
    >
      <slot>Article has been edited</slot>
      <button
        @click="alertTpe = 'none'"
        type="button"
        class="close"
        data-dismiss="alert"
        aria-label="Close"
      >
        <span aria-hidden="true">&times;</span>
      </button>
    </div>

    <!-- Add and Edit Form -->

    <!-- submit prevent prevents it from submitting to a file -->
    <form @submit.prevent="addOrUpdateArticle" class="mb-3">
      <div class="form-group">
        <!-- v-model binds the input to the article title in this case -->
        <input type="text" class="form-control" placeholder="Title" v-model="article.title" />
      </div>
      <div class="form-group">
        <!-- v-model binds the input to the article body in this case -->
        <textarea class="form-control" placeholder="Body" v-model="article.body"></textarea>
      </div>
      <button type="submit" class="btn btn-success btn-block">Save</button>
    </form>
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
      <hr />
      <button @click="editArticle(article)" class="btn btn-warning mb-1">Edit</button>
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
      edit: false, // Same form is going to be to used for add and edit
      alertType: "none"
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
      if (confirm("Are you sure?")) {
        fetch(`api/article/${id}`, {
          method: "delete"
        })
          .then(result => result.json())
          .then(data => {
            this.alertType = "delete";
            this.fetchArticles();
            setTimeout(() => {
              this.alertType = "none";
            }, 2000); 
          })
          .catch(err => console.log(err));
      }
    },

    addOrUpdateArticle() {
      if (this.edit === false) {
        // Add
        fetch("api/article", {
          method: "post",
          body: JSON.stringify(this.article),
          headers: {
            "content-type": "application/json"
          }
        })
          .then(result => result.json())
          .then(data => {
            this.article.title = "";
            this.article.body = "";
            this.alertType = "add"
            this.fetchArticles();
            setTimeout(() => {
              this.alertType = "none";
            }, 2000);
          })
          .catch(err => console.log(err));
      } else {
        // Update
        this.alertType = 'none'
        fetch("api/article", {
          method: "put",
          body: JSON.stringify(this.article),
          headers: {
            "content-type": "application/json"
          }
        })
          .then(res => res.json())
          .then(data => {
            this.clearForm();
            this.alertType = 'edit'
            this.fetchArticles();
            setTimeout(() => {
              this.alertType = "none";
            }, 2000);
          })
          .catch(err => console.log(err));
      }
    },

    editArticle(article) {
      this.alertType = 'edit_process';
      this.edit = true;
      this.article.id = article.id;
      this.article.article_id = article.id; // Needed for an update
      this.article.title = article.title;
      this.article.body = article.body;
    },

    clearForm() {
      this.edit = false;
      this.article.id = null;
      this.article.article_id = null;
      this.article.title = "";
      this.article.body = "";
    }
  }
};
</script>
