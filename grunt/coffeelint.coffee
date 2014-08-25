module.exports = (grunt) ->
  grunt.config 'coffeelint',
    all: [
      'assets/coffee/**/*.coffee'
      'grunt/*.coffee'
      'test/**/*.coffee'
      '*.coffee'
    ]
    options:
      arrow_spacing:
        level: 'error'
      # https://github.com/clutchski/coffeelint/issues/201
      # colon_assignment_spacing:
      #   level: 'error'
      #   spacing:
      #     left: 0
      #     right: 1
      cyclomatic_complexity:
        level: 'error'
        value: 11 # http://stackoverflow.com/questions/20702/whats-your-a-good-limit-for-cyclomatic-complexity
      no_tabs:
        level: 'ignore'
      indentation:
        level: 'ignore'
        value: 1
      max_line_length:
        level: 'ignore'
        # value: 120

  grunt.loadNpmTasks 'grunt-coffeelint'