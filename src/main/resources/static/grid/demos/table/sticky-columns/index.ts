/// <reference path="../../../source/typescript/smart.elements.d.ts" />

import { Table } from "../../../source/typescript/smart.elements"

const chemicalElementsData: any[] = [
    { number: 1, name: 'Hydrogen', symbol: 'H', weight: 1.008, abundance: 1400 },
    { number: 2, name: 'Helium', symbol: 'He', weight: 4.002602, abundance: 0.008 },
    { number: 3, name: 'Lithium', symbol: 'Li', weight: 6.94, abundance: 20 },
    { number: 4, name: 'Beryllium', symbol: 'Be', weight: 9.0121831, abundance: 2.8 },
    { number: 5, name: 'Boron', symbol: 'B', weight: 10.81, abundance: 10 },
    { number: 6, name: 'Carbon', symbol: 'C', weight: 12.011, abundance: 200 },
    { number: 7, name: 'Nitrogen', symbol: 'N', weight: 14.007, abundance: 19 },
    { number: 8, name: 'Oxygen', symbol: 'O', weight: 15.999, abundance: 461000 },
    { number: 9, name: 'Fluorine', symbol: 'F', weight: 18.998403163, abundance: 585 },
    { number: 10, name: 'Neon', symbol: 'Ne', weight: 20.1797, abundance: 0.005 }
];

window.Smart('#table', class {
    get properties() {
        return {
            dataSource: new window.Smart.DataAdapter(
                {
                    dataSource: chemicalElementsData,
                    dataFields:
                        [
                            'number: number',
                            'name: string',
                            'symbol: string',
                            'weight: number',
                            'abundance: number'
                        ]
                }),
            columns: [
                { label: 'No.', dataField: 'number', dataType: 'number', width: 50, freeze: true },
                { label: 'Name', dataField: 'name', dataType: 'string', width: 200, freeze: 'near' },
                { label: 'Symbol', dataField: 'symbol', dataType: 'string', width: 150 },
                { label: 'Weight', dataField: 'weight', dataType: 'number', width: 200 },
                {
                    label: 'Abundance', dataField: 'abundance', dataType: 'number', width: 200, formatFunction(settings: { value: any, row: string | number, column: string, cell: HTMLTableCellElement, template?: string }) {
                        settings.template = settings.value + ' mg/kg';
                    }
                },
                {
                    label: '', dataField: '', dataType: 'string', width: 50, freeze: 'far', formatFunction(settings: { value: any, row: string | number, column: string, cell: HTMLTableCellElement, template?: string }) {
                        settings.template = '<span class="material-icons">more_vert</span>';
                    }
                }
            ]
        };
    }
});
