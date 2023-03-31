import { Component, useState, useEffect } from 'react'
import range from 'lodash/range'
import last from 'lodash/last'
import { storiesOf } from '@storybook/react'
import { withKnobs, boolean, select } from '@storybook/addon-knobs'
import { generateDrinkStats } from '@nivo/generators'
import { Defs, linearGradientDef } from '@nivo/core'
import { area, curveMonotoneX } from 'd3-shape'
import * as time from 'd3-time'
import { timeFormat } from 'd3-time-format'
import { Line } from '../src'

const commonProperties = {
    width: 900,
    height: 400,
    margin: { top: 20, right: 20, bottom: 60, left: 80 },
     data,
     animate: true,
    enableSlices: 'x',
 };

 const CustomSymbol = ({ size, color, borderWidth, borderColor }) => (
    <g>
        <circle fill="#fff" r={size / 2} strokeWidth={borderWidth} stroke={borderColor} />
        <circle
           r={size / 5}
           strokeWidth={borderWidth}
             stroke={borderColor}
            fill={color}
            fillOpacity={0.35}
         />
     </g>
)
 
const stories = storiesOf('Line', module)

const curveOptions = ['linear', 'monotoneX', 'step', 'stepBefore', 'stepAfter']
 
stories.addDecorator(withKnobs)

 stories.add(
     'Stacked Lines',
     () => (
        <Line
    {...commonProperties}
    data = {[
      { x: '2018-01-01', y: 7 },
      { x: '2018-01-02', y: 5 },
      { x: '2018-01-03', y: 11 },
      { x: '2018-01-04', y: 9 },
      { x: '2018-01-05', y: 12 },
      { x: '2018-01-06', y: 16 },
      { x: '2018-01-07', y: 13 },
      { x: '2018-01-08', y: 13 },
    ]}
    xScale={{
      type:'time',
      format:'%Y-%m-%d',
      useUTC: false,
      precision: 'day',
    }}
    xFormat='time:%Y-%m-%d'
    yScale={{
      type:'linear',
      stacked: Boolean('stacked', false),
    }}
    axisLeft={{
      format: '%b %d',
      tickValues: 'every 2 days',
      legend: 'time scale',
      legendOffset: -12,
    }}
    curve={select('curve', curveOptions, 'monotoneX')}
    enablePointLabel={true}
    pointSymbol={CustomSymbol}
    pointSize={16}
    pointBorderWidth={1}
    pointBorderColor={{
      from: 'color',
      modifiers: [['darker', 0.3]],
    }}
    useMesh={true}
    enableSlices={false}
    />
    )
 )


