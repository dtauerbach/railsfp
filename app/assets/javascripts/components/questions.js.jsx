var Question = React.createClass({
    render: function() {
        return <div> Some question and answers... </div>;
    }
});

var Questions = React.createClass({
    render: function() {
      return <div>Questions Component
          <Question />
          <Question />
          <Question />
        </div>
    }
});
