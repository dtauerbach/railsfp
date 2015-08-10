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
