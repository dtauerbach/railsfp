var Router = ReactRouter;

var DefaultRoute = Router.DefaultRoute;
var Link = Router.Link;
var Route = Router.Route;
var RouteHandler = Router.RouteHandler;

var SharingSetting = React.createClass({
    render: function() {
        return <input type="radio" class="radio sharing-settings-radio" name="sharing_setting_radio_selection"> {this.props.name} </input>;
    }
});

var SharingSettings = React.createClass({
    getInitialState: function() {
        return {sharing_setting: 0};
    },

    render: function() {
        var sharing_setting_radio_buttons = [];
        for (var i=0; i < this.props.data.length; i++)
          sharing_setting_radio_buttons.push(<SharingSetting name={this.props.data[i].title} />);
        return <div className="sharing_settings_container">
               {sharing_setting_radio_buttons}
               </div>;
    }
});

var Dashboard = React.createClass({
  render: function() {
    return <div>blah blah</div>;
  }
});

var App = React.createClass({
  render: function () {
    return (
      <div>
        <header>
          <ul>
            <li><Link to="app">Dashboard</Link></li>
            <li><Link to="questions">Questions</Link></li>
            <li><Link to="sharing">Sharing Settings</Link></li>
          </ul>
        </header>

        {/* this is the important part */}
        <RouteHandler/>
      </div>
    );
  }
});

var routes = (
  <Route name="app" path="/" handler={App}>
    <Route name="questions" handler={Questions}/>
    <Route name="sharing" handler={SharingSettings}/>
    <DefaultRoute handler={Dashboard}/>
  </Route>
);

Router.run(routes, function (Handler) {
  React.render(<Handler/>, document.body);
});
