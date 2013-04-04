module.exports = (grunt) ->
  grunt.loadNpmTasks 'grunt-contrib-connect'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-concat'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.initConfig
    connect:
      server:
        options:
          port: 8888
          base: '.'

    watch:
      coffee:
        files: "src/**/*.coffee",
        tasks: ["coffee"]

    concat:
      app:
        src:[
          "components/jquery/jquery.min.js"
          "components/angular/angular.js"
        ]
        dest: "dist/vendor.js"
    coffee:
      compile:
        files:
          'dist/all.js': [
            "src/initialize.coffee"
            "src/**/*.coffee"
          ]

  grunt.registerTask "run", ["coffee","connect", "watch"]
