(function($) {

  'use strict';

  var App = {

    /**
     * Init
     */
    init: function() {
      App.popin();
      App.dropdown();
      App.chart();
      App.retirement();
      App.diagnostic();
    },

    /**
     * Popin
     */
    popin: function() {
      var popin = $('.popin');
      if (popin.length) {
        popin.each(function() {
          var I = $(this), myOpen = I.find('.popin-open'), myClose = I.find('.popin-close');
          myOpen.click(function(e) {
            I.addClass('active');
            e.preventDefault();
          });
          myClose.click(function(e) {
            I.removeClass('active');
            e.preventDefault();
          });
        });
      }
    },

    /**
     * Dropdown
     */
    dropdown: function() {
      var activityDropdown = $('.activity-dropdown');
      if (activityDropdown.length) {
        activityDropdown.each(function() {
          var I = $(this), mySelect = I.find('select'), mySpan = I.find('span');
          mySpan.html(mySelect.val());
          mySelect.change(function() {
            mySpan.html(mySelect.val());
          });
        });
      }

      var protectionDropdown = $('.protection-dropdown');
      if (protectionDropdown.length) {
        protectionDropdown.each(function() {
          var I = $(this), mySelect = I.find('select'), mySpan = I.find('span');
          mySpan.html(mySelect.val());
          mySelect.change(function() {
            mySpan.html(mySelect.val());
          });
        });
      }
    },

    /**
     * Chart
     */
    chart: function() {
      var pie = $('.pie');
      if (pie.length) {
        new Chartist.Pie('.pie', {
          labels: ['20 000 €', '80 000 €'],
          series: [20, 80]
        }, {
          startAngle: 0,
          height: 230,
          chartPadding: 30,
          showLabel: true,
          labelOffset: 60,
          labelDirection: 'explode'
        });
      }
    },

    /**
     * Diagnostic
     */
    diagnostic: function() {
      var range1 = $('.diagnostic-range.i1');
      if (range1.length) {
        range1.rangeslider({
          polyfill: false,
          rangeClass: 'diagnostic-slider i1',
          disabledClass: 'diagnostic-slider--disabled',
          horizontalClass: 'diagnostic-slider--horizontal',
          verticalClass: 'diagnostic-slider--vertical',
          fillClass: 'diagnostic-slider--filler',
          handleClass: 'diagnostic-slider--handler'
        });
      }

      var range2 = $('.diagnostic-range.i2');
      if (range2.length) {
        range2.rangeslider({
          polyfill: false,
          rangeClass: 'diagnostic-slider i2',
          disabledClass: 'diagnostic-slider--disabled',
          horizontalClass: 'diagnostic-slider--horizontal',
          verticalClass: 'diagnostic-slider--vertical',
          fillClass: 'diagnostic-slider--filler',
          handleClass: 'diagnostic-slider--handler'
        });
      }

      var range3 = $('.diagnostic-range.i3');
      if (range3.length) {
        range3.rangeslider({
          polyfill: false,
          rangeClass: 'diagnostic-slider i3',
          disabledClass: 'diagnostic-slider--disabled',
          horizontalClass: 'diagnostic-slider--horizontal',
          verticalClass: 'diagnostic-slider--vertical',
          fillClass: 'diagnostic-slider--filler',
          handleClass: 'diagnostic-slider--handler'
        });
      }

      var range4 = $('.diagnostic-range.i4');
      if (range4.length) {
        range4.each(function() {
          var range = $(this);
          range.rangeslider({
            polyfill: false,
            rangeClass: 'diagnostic-slider i4',
            disabledClass: 'diagnostic-slider--disabled',
            horizontalClass: 'diagnostic-slider--horizontal',
            verticalClass: 'diagnostic-slider--vertical',
            fillClass: 'diagnostic-slider--filler',
            handleClass: 'diagnostic-slider--handler',
            onInit: function() {
              App.rangeSlider4(range);
            },
            onSlide: function() {
              App.rangeSlider4(range);
            },
            onResize: function() {
              App.rangeSlider4(range);
            }
          });
        });
      }

      var range5 = $('.diagnostic-range.i5');
      if (range5.length) {
        range5.each(function() {
          var range = $(this);
          range.rangeslider({
            polyfill: false,
            rangeClass: 'diagnostic-slider i5',
            disabledClass: 'diagnostic-slider--disabled',
            horizontalClass: 'diagnostic-slider--horizontal',
            verticalClass: 'diagnostic-slider--vertical',
            fillClass: 'diagnostic-slider--filler',
            handleClass: 'diagnostic-slider--handler',
            onInit: function() {
              App.rangeSlider5(range);
            },
            onSlide: function() {
              App.rangeSlider5(range);
            },
            onResize: function() {
              App.rangeSlider5(range);
            }
          });
        });
      }

      var dropdown1 = $('.diagnostic-dropdown');
      if (dropdown1.length) {
        dropdown1.each(function() {
          var I = $(this), mySelect = I.find('select'), mySpan = I.find('span');
          mySpan.html(mySelect.val());
          mySelect.change(function() {
            mySpan.html(mySelect.val());
          });
        });
      }

      var dropdown2 = $('.diagnostic-form--product---dropdown');
      if (dropdown2.length) {
        dropdown2.each(function() {
          var I = $(this), myDiv = I.find('div'), mySpan = I.find('span'), myLI = I.find('li');
          myDiv.bind('click', function() {
            I.toggleClass('active');
          });
          myLI.bind('click', function() {
            var mySelect = $(this).html();
            mySpan.html(mySelect);
            I.removeClass('active');
          });
        });
      }

      var chart1 = $('.diagnostic-chart.i1');
      if (chart1.length) {
        chart1.each(function() {
          var I = $(this), myPie = parseInt(I.attr('data-pie'));
          new Chartist.Pie(I[0], {
            series: [myPie, 360 - myPie]
          }, {
            chartPadding: 0,
            showLabel: false
          });
        });
      }

      var chart2 = $('.diagnostic-chart.i2');
      if (chart2.length) {
        chart2.each(function() {
          var I = $(this), myPie = parseInt(I.attr('data-pie'));
          new Chartist.Pie(I[0], {
            series: [180 - myPie, myPie]
          }, {
            chartPadding: 0,
            showLabel: false,
            donut: true,
            donutWidth: 25,
            startAngle: 270,
            total: 360,
            width: '180px',
            height: '180px'
          });
        });
      }

      var chart3 = $('.diagnostic-chart.i3');
      if (chart3.length) {
        chart3.each(function() {
          var I = $(this), myPie = parseInt(I.attr('data-pie'));
          new Chartist.Pie(I[0], {
            series: [myPie]
          }, {
            chartPadding: 0,
            showLabel: false,
            donut: true,
            donutWidth: 25,
            startAngle: 270,
            total: 360,
            width: '180px',
            height: '180px'
          });
        });
      }

      var popin = $('.diagnostic-popin'),
          popinOpen = $('.diagnostic-popin--open'), popinClose = $('.diagnostic-popin--close');
      if (popin.length) {
        popinOpen.click(function(e){
          var target = $($(this).attr('data-target'));
          if (target.length) {
            if (!target.hasClass('active')) {
              popin.removeClass('active');
              target.addClass('active');
            } else {
              target.removeClass('active');
            }
          }
          e.preventDefault();
        });

        popinClose.click(function(e){
          popin.removeClass('active');
          e.preventDefault();
        });
      }
    },
    rangeSlider4: function(range) {
      var slider = range.siblings('.diagnostic-slider.i4'),
          handler = slider.find('.diagnostic-slider--handler'),
          result = slider.siblings('.diagnostic-saving--bubble');
      result.css('left', parseInt(handler.css('left')) + 18);
      result.html($.number(range.val(), 0, ',', ' '));
    },
    rangeSlider5: function(range) {
      var slider = range.siblings('.diagnostic-slider.i5'),
          result = slider.siblings('.diagnostic-form--input');
      result.find('input').val($.number(range.val(), 0, ',', ' ') + ' €');
    },

    /**
     * Retirement
     */
    retirement: function() {
      var range = $('.retirement-range');
      if (range.length) {
        range.each(function() {
          var range = $(this);
          range.rangeslider({
            polyfill: false,
            rangeClass: 'retirement-slider--container',
            disabledClass: 'retirement-slider--disabled',
            horizontalClass: 'retirement-slider--horizontal',
            verticalClass: 'retirement-slider--vertical',
            fillClass: 'retirement-slider--filler',
            handleClass: 'retirement-slider--handler',
            onInit: function() {
              App.retirementSlider(range);
            },
            onSlide: function() {
              App.retirementSlider(range);
            },
            onResize: function() {
              App.retirementSlider(range);
            }
          });
        });
      }

      var popin = $('.retirement-popin'),
          popinOpen = $('.retirement-popin--open'), popinClose = $('.retirement-popin--close');
      if (popin.length) {
        popinOpen.click(function(e){
          var target = $($(this).attr('data-target'));
          if (target.length) {
            if (!target.hasClass('active')) {
              popin.removeClass('active');
              target.addClass('active');
            } else {
              target.removeClass('active');
            }
          }
          e.preventDefault();
        });

        popinClose.click(function(e){
          popin.removeClass('active');
          e.preventDefault();
        });
      }
    },
    retirementSlider: function(range) {
      var slider = range.siblings('.retirement-slider--container'),
          handler = slider.find('.retirement-slider--handler'),
          result = slider.siblings('.retirement-slider--value');
      result.css('left', parseInt(handler.css('left')));
      result.find('span').html(range.val());
    }

  };

  $(function() {
    App.init();
  });

})(jQuery);
