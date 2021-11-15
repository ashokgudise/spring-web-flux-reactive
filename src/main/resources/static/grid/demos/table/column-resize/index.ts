/// <reference path="../../../source/typescript/smart.elements.d.ts" />

import { Table } from "../../../source/typescript/smart.elements"

declare global {
    interface Window {
        generateData: (rowscount: number) => any[];
    }
}

window.Smart('#table', class {
    get properties() {
        return {
            dataSource: new window.Smart.DataAdapter({
                dataSource: window.generateData(15),
                dataFields: [
                    'id: number',
                    'productName: string',
                    'quantity: number',
                    'price: number',
                    'date: date'
                ]
            }),
            columnResize: true,
            columnResizeFeedback: true,
            tooltip: true,
            columns: [
                { label: 'id', dataField: 'id', dataType: 'number', width: 50 },
                { label: 'Product Name', dataField: 'productName', dataType: 'string' },
                { label: 'Quantity', dataField: 'quantity', dataType: 'number' },
                { label: 'Price', dataField: 'price', dataType: 'number' },
                { label: 'Date Purchased', dataField: 'date', dataType: 'date' }
            ]
        };
    }
});
