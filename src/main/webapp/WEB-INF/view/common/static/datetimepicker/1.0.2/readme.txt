based on http://www.bootcss.com/p/bootstrap-datetimepicker/
2015-05-08

��ԭ��Ĳ�ͬΪ��ȥ���˵��������͵�������ѡ����Ч�����������£�
			if (this.isInput) { // single input
				this._events = [
//					[this.element, {
//						focus:   $.proxy(this.show, this),
//						keyup:   $.proxy(this.update, this),
//						keydown: $.proxy(this.keydown, this)
//					}]
				];
			}
			else if (this.component && this.hasInput) { // component: input + button
				this._events = [
					// For components that are not readonly, allow keyboard nav
//					[this.element.find('input'), {
//						focus:   $.proxy(this.show, this),
//						keyup:   $.proxy(this.update, this),
//						keydown: $.proxy(this.keydown, this)
//					}],
					[this.component, {
						click: $.proxy(this.show, this)
					}]
				];