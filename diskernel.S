
../build/kernel.bin:     file format elf32-i386


Disassembly of section .text:

c0001500 <k_thread_a>:
c0001500:	55                   	push   %ebp
c0001501:	89 e5                	mov    %esp,%ebp
c0001503:	53                   	push   %ebx
c0001504:	83 ec 14             	sub    $0x14,%esp
c0001507:	e8 ba 00 00 00       	call   c00015c6 <__x86.get_pc_thunk.bx>
c000150c:	81 c3 f4 4a 00 00    	add    $0x4af4,%ebx
c0001512:	8b 45 08             	mov    0x8(%ebp),%eax
c0001515:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0001518:	83 ec 0c             	sub    $0xc,%esp
c000151b:	ff 75 f4             	push   -0xc(%ebp)
c000151e:	e8 4f 0c 00 00       	call   c0002172 <put_str>
c0001523:	83 c4 10             	add    $0x10,%esp
c0001526:	eb f0                	jmp    c0001518 <k_thread_a+0x18>

c0001528 <k_thread_b>:
c0001528:	55                   	push   %ebp
c0001529:	89 e5                	mov    %esp,%ebp
c000152b:	53                   	push   %ebx
c000152c:	83 ec 14             	sub    $0x14,%esp
c000152f:	e8 92 00 00 00       	call   c00015c6 <__x86.get_pc_thunk.bx>
c0001534:	81 c3 cc 4a 00 00    	add    $0x4acc,%ebx
c000153a:	8b 45 08             	mov    0x8(%ebp),%eax
c000153d:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0001540:	83 ec 0c             	sub    $0xc,%esp
c0001543:	ff 75 f4             	push   -0xc(%ebp)
c0001546:	e8 27 0c 00 00       	call   c0002172 <put_str>
c000154b:	83 c4 10             	add    $0x10,%esp
c000154e:	eb f0                	jmp    c0001540 <k_thread_b+0x18>

c0001550 <main>:
c0001550:	8d 4c 24 04          	lea    0x4(%esp),%ecx
c0001554:	83 e4 f0             	and    $0xfffffff0,%esp
c0001557:	ff 71 fc             	push   -0x4(%ecx)
c000155a:	55                   	push   %ebp
c000155b:	89 e5                	mov    %esp,%ebp
c000155d:	53                   	push   %ebx
c000155e:	51                   	push   %ecx
c000155f:	e8 62 00 00 00       	call   c00015c6 <__x86.get_pc_thunk.bx>
c0001564:	81 c3 9c 4a 00 00    	add    $0x4a9c,%ebx
c000156a:	e8 5b 00 00 00       	call   c00015ca <init_all>
c000156f:	8d 83 00 e0 ff ff    	lea    -0x2000(%ebx),%eax
c0001575:	50                   	push   %eax
c0001576:	8d 83 00 b5 ff ff    	lea    -0x4b00(%ebx),%eax
c000157c:	50                   	push   %eax
c000157d:	6a 1f                	push   $0x1f
c000157f:	8d 83 11 e0 ff ff    	lea    -0x1fef(%ebx),%eax
c0001585:	50                   	push   %eax
c0001586:	e8 ff 1b 00 00       	call   c000318a <thread_start>
c000158b:	83 c4 10             	add    $0x10,%esp
c000158e:	8d 83 1c e0 ff ff    	lea    -0x1fe4(%ebx),%eax
c0001594:	50                   	push   %eax
c0001595:	8d 83 00 b5 ff ff    	lea    -0x4b00(%ebx),%eax
c000159b:	50                   	push   %eax
c000159c:	6a 0b                	push   $0xb
c000159e:	8d 83 2d e0 ff ff    	lea    -0x1fd3(%ebx),%eax
c00015a4:	50                   	push   %eax
c00015a5:	e8 e0 1b 00 00       	call   c000318a <thread_start>
c00015aa:	83 c4 10             	add    $0x10,%esp
c00015ad:	e8 90 04 00 00       	call   c0001a42 <intr_enable>
c00015b2:	83 ec 0c             	sub    $0xc,%esp
c00015b5:	8d 83 38 e0 ff ff    	lea    -0x1fc8(%ebx),%eax
c00015bb:	50                   	push   %eax
c00015bc:	e8 b1 0b 00 00       	call   c0002172 <put_str>
c00015c1:	83 c4 10             	add    $0x10,%esp
c00015c4:	eb ec                	jmp    c00015b2 <main+0x62>

c00015c6 <__x86.get_pc_thunk.bx>:
c00015c6:	8b 1c 24             	mov    (%esp),%ebx
c00015c9:	c3                   	ret    

c00015ca <init_all>:
c00015ca:	55                   	push   %ebp
c00015cb:	89 e5                	mov    %esp,%ebp
c00015cd:	53                   	push   %ebx
c00015ce:	83 ec 04             	sub    $0x4,%esp
c00015d1:	e8 f0 ff ff ff       	call   c00015c6 <__x86.get_pc_thunk.bx>
c00015d6:	81 c3 2a 4a 00 00    	add    $0x4a2a,%ebx
c00015dc:	e8 c7 03 00 00       	call   c00019a8 <init_idt>
c00015e1:	e8 5f 06 00 00       	call   c0001c45 <init_time>
c00015e6:	e8 a3 17 00 00       	call   c0002d8e <init_mem>
c00015eb:	e8 6c 1e 00 00       	call   c000345c <thread_init>
c00015f0:	90                   	nop
c00015f1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00015f4:	c9                   	leave  
c00015f5:	c3                   	ret    

c00015f6 <outb>:
c00015f6:	55                   	push   %ebp
c00015f7:	89 e5                	mov    %esp,%ebp
c00015f9:	83 ec 08             	sub    $0x8,%esp
c00015fc:	e8 f2 04 00 00       	call   c0001af3 <__x86.get_pc_thunk.ax>
c0001601:	05 ff 49 00 00       	add    $0x49ff,%eax
c0001606:	8b 45 08             	mov    0x8(%ebp),%eax
c0001609:	8b 55 0c             	mov    0xc(%ebp),%edx
c000160c:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0001610:	89 d0                	mov    %edx,%eax
c0001612:	88 45 f8             	mov    %al,-0x8(%ebp)
c0001615:	0f b6 45 f8          	movzbl -0x8(%ebp),%eax
c0001619:	0f b7 55 fc          	movzwl -0x4(%ebp),%edx
c000161d:	ee                   	out    %al,(%dx)
c000161e:	90                   	nop
c000161f:	c9                   	leave  
c0001620:	c3                   	ret    

c0001621 <init_pic>:
c0001621:	55                   	push   %ebp
c0001622:	89 e5                	mov    %esp,%ebp
c0001624:	e8 ca 04 00 00       	call   c0001af3 <__x86.get_pc_thunk.ax>
c0001629:	05 d7 49 00 00       	add    $0x49d7,%eax
c000162e:	6a 11                	push   $0x11
c0001630:	6a 20                	push   $0x20
c0001632:	e8 bf ff ff ff       	call   c00015f6 <outb>
c0001637:	83 c4 08             	add    $0x8,%esp
c000163a:	6a 20                	push   $0x20
c000163c:	6a 21                	push   $0x21
c000163e:	e8 b3 ff ff ff       	call   c00015f6 <outb>
c0001643:	83 c4 08             	add    $0x8,%esp
c0001646:	6a 04                	push   $0x4
c0001648:	6a 21                	push   $0x21
c000164a:	e8 a7 ff ff ff       	call   c00015f6 <outb>
c000164f:	83 c4 08             	add    $0x8,%esp
c0001652:	6a 01                	push   $0x1
c0001654:	6a 21                	push   $0x21
c0001656:	e8 9b ff ff ff       	call   c00015f6 <outb>
c000165b:	83 c4 08             	add    $0x8,%esp
c000165e:	6a 11                	push   $0x11
c0001660:	68 a0 00 00 00       	push   $0xa0
c0001665:	e8 8c ff ff ff       	call   c00015f6 <outb>
c000166a:	83 c4 08             	add    $0x8,%esp
c000166d:	6a 28                	push   $0x28
c000166f:	68 a1 00 00 00       	push   $0xa1
c0001674:	e8 7d ff ff ff       	call   c00015f6 <outb>
c0001679:	83 c4 08             	add    $0x8,%esp
c000167c:	6a 02                	push   $0x2
c000167e:	68 a1 00 00 00       	push   $0xa1
c0001683:	e8 6e ff ff ff       	call   c00015f6 <outb>
c0001688:	83 c4 08             	add    $0x8,%esp
c000168b:	6a 01                	push   $0x1
c000168d:	68 a1 00 00 00       	push   $0xa1
c0001692:	e8 5f ff ff ff       	call   c00015f6 <outb>
c0001697:	83 c4 08             	add    $0x8,%esp
c000169a:	68 fe 00 00 00       	push   $0xfe
c000169f:	6a 21                	push   $0x21
c00016a1:	e8 50 ff ff ff       	call   c00015f6 <outb>
c00016a6:	83 c4 08             	add    $0x8,%esp
c00016a9:	68 ff 00 00 00       	push   $0xff
c00016ae:	68 a1 00 00 00       	push   $0xa1
c00016b3:	e8 3e ff ff ff       	call   c00015f6 <outb>
c00016b8:	83 c4 08             	add    $0x8,%esp
c00016bb:	90                   	nop
c00016bc:	c9                   	leave  
c00016bd:	c3                   	ret    

c00016be <make_idt_desc>:
c00016be:	55                   	push   %ebp
c00016bf:	89 e5                	mov    %esp,%ebp
c00016c1:	83 ec 04             	sub    $0x4,%esp
c00016c4:	e8 2a 04 00 00       	call   c0001af3 <__x86.get_pc_thunk.ax>
c00016c9:	05 37 49 00 00       	add    $0x4937,%eax
c00016ce:	8b 45 0c             	mov    0xc(%ebp),%eax
c00016d1:	88 45 fc             	mov    %al,-0x4(%ebp)
c00016d4:	8b 45 10             	mov    0x10(%ebp),%eax
c00016d7:	c1 e8 10             	shr    $0x10,%eax
c00016da:	89 c2                	mov    %eax,%edx
c00016dc:	8b 45 08             	mov    0x8(%ebp),%eax
c00016df:	66 89 50 06          	mov    %dx,0x6(%eax)
c00016e3:	8b 45 08             	mov    0x8(%ebp),%eax
c00016e6:	0f b6 55 fc          	movzbl -0x4(%ebp),%edx
c00016ea:	88 50 05             	mov    %dl,0x5(%eax)
c00016ed:	8b 45 08             	mov    0x8(%ebp),%eax
c00016f0:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c00016f4:	8b 45 08             	mov    0x8(%ebp),%eax
c00016f7:	66 c7 40 02 08 00    	movw   $0x8,0x2(%eax)
c00016fd:	8b 45 10             	mov    0x10(%ebp),%eax
c0001700:	89 c2                	mov    %eax,%edx
c0001702:	8b 45 08             	mov    0x8(%ebp),%eax
c0001705:	66 89 10             	mov    %dx,(%eax)
c0001708:	90                   	nop
c0001709:	c9                   	leave  
c000170a:	c3                   	ret    

c000170b <init_idt_desc>:
c000170b:	55                   	push   %ebp
c000170c:	89 e5                	mov    %esp,%ebp
c000170e:	53                   	push   %ebx
c000170f:	83 ec 10             	sub    $0x10,%esp
c0001712:	e8 af fe ff ff       	call   c00015c6 <__x86.get_pc_thunk.bx>
c0001717:	81 c3 e9 48 00 00    	add    $0x48e9,%ebx
c000171d:	c6 45 fb 00          	movb   $0x0,-0x5(%ebp)
c0001721:	eb 35                	jmp    c0001758 <init_idt_desc+0x4d>
c0001723:	0f b6 55 fb          	movzbl -0x5(%ebp),%edx
c0001727:	c7 c0 0c 60 00 c0    	mov    $0xc000600c,%eax
c000172d:	8b 04 90             	mov    (%eax,%edx,4),%eax
c0001730:	8b 8b c4 01 00 00    	mov    0x1c4(%ebx),%ecx
c0001736:	0f b6 55 fb          	movzbl -0x5(%ebp),%edx
c000173a:	c1 e2 03             	shl    $0x3,%edx
c000173d:	01 ca                	add    %ecx,%edx
c000173f:	50                   	push   %eax
c0001740:	68 8e 00 00 00       	push   $0x8e
c0001745:	52                   	push   %edx
c0001746:	e8 73 ff ff ff       	call   c00016be <make_idt_desc>
c000174b:	83 c4 0c             	add    $0xc,%esp
c000174e:	0f b6 45 fb          	movzbl -0x5(%ebp),%eax
c0001752:	83 c0 01             	add    $0x1,%eax
c0001755:	88 45 fb             	mov    %al,-0x5(%ebp)
c0001758:	80 7d fb 20          	cmpb   $0x20,-0x5(%ebp)
c000175c:	76 c5                	jbe    c0001723 <init_idt_desc+0x18>
c000175e:	90                   	nop
c000175f:	90                   	nop
c0001760:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0001763:	c9                   	leave  
c0001764:	c3                   	ret    

c0001765 <general_intr_handler>:
c0001765:	55                   	push   %ebp
c0001766:	89 e5                	mov    %esp,%ebp
c0001768:	53                   	push   %ebx
c0001769:	83 ec 24             	sub    $0x24,%esp
c000176c:	e8 55 fe ff ff       	call   c00015c6 <__x86.get_pc_thunk.bx>
c0001771:	81 c3 8f 48 00 00    	add    $0x488f,%ebx
c0001777:	8b 45 08             	mov    0x8(%ebp),%eax
c000177a:	88 45 e4             	mov    %al,-0x1c(%ebp)
c000177d:	80 7d e4 27          	cmpb   $0x27,-0x1c(%ebp)
c0001781:	0f 84 c5 00 00 00    	je     c000184c <general_intr_handler+0xe7>
c0001787:	80 7d e4 2f          	cmpb   $0x2f,-0x1c(%ebp)
c000178b:	0f 84 bb 00 00 00    	je     c000184c <general_intr_handler+0xe7>
c0001791:	83 ec 0c             	sub    $0xc,%esp
c0001794:	6a 50                	push   $0x50
c0001796:	e8 59 0a 00 00       	call   c00021f4 <set_cursor>
c000179b:	83 c4 10             	add    $0x10,%esp
c000179e:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c00017a5:	eb 11                	jmp    c00017b8 <general_intr_handler+0x53>
c00017a7:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c00017ab:	83 ec 0c             	sub    $0xc,%esp
c00017ae:	6a 20                	push   $0x20
c00017b0:	e8 db 08 00 00       	call   c0002090 <put_char>
c00017b5:	83 c4 10             	add    $0x10,%esp
c00017b8:	81 7d f4 3f 01 00 00 	cmpl   $0x13f,-0xc(%ebp)
c00017bf:	7e e6                	jle    c00017a7 <general_intr_handler+0x42>
c00017c1:	83 ec 0c             	sub    $0xc,%esp
c00017c4:	6a 00                	push   $0x0
c00017c6:	e8 29 0a 00 00       	call   c00021f4 <set_cursor>
c00017cb:	83 c4 10             	add    $0x10,%esp
c00017ce:	83 ec 0c             	sub    $0xc,%esp
c00017d1:	8d 83 44 e0 ff ff    	lea    -0x1fbc(%ebx),%eax
c00017d7:	50                   	push   %eax
c00017d8:	e8 95 09 00 00       	call   c0002172 <put_str>
c00017dd:	83 c4 10             	add    $0x10,%esp
c00017e0:	83 ec 0c             	sub    $0xc,%esp
c00017e3:	6a 58                	push   $0x58
c00017e5:	e8 0a 0a 00 00       	call   c00021f4 <set_cursor>
c00017ea:	83 c4 10             	add    $0x10,%esp
c00017ed:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
c00017f1:	8b 84 83 a0 00 00 00 	mov    0xa0(%ebx,%eax,4),%eax
c00017f8:	83 ec 0c             	sub    $0xc,%esp
c00017fb:	50                   	push   %eax
c00017fc:	e8 71 09 00 00       	call   c0002172 <put_str>
c0001801:	83 c4 10             	add    $0x10,%esp
c0001804:	80 7d e4 0e          	cmpb   $0xe,-0x1c(%ebp)
c0001808:	75 2e                	jne    c0001838 <general_intr_handler+0xd3>
c000180a:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c0001811:	0f 20 d0             	mov    %cr2,%eax
c0001814:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0001817:	83 ec 0c             	sub    $0xc,%esp
c000181a:	8d 83 7c e0 ff ff    	lea    -0x1f84(%ebx),%eax
c0001820:	50                   	push   %eax
c0001821:	e8 4c 09 00 00       	call   c0002172 <put_str>
c0001826:	83 c4 10             	add    $0x10,%esp
c0001829:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000182c:	83 ec 0c             	sub    $0xc,%esp
c000182f:	50                   	push   %eax
c0001830:	e8 5d 09 00 00       	call   c0002192 <put_int>
c0001835:	83 c4 10             	add    $0x10,%esp
c0001838:	83 ec 0c             	sub    $0xc,%esp
c000183b:	8d 83 94 e0 ff ff    	lea    -0x1f6c(%ebx),%eax
c0001841:	50                   	push   %eax
c0001842:	e8 2b 09 00 00       	call   c0002172 <put_str>
c0001847:	83 c4 10             	add    $0x10,%esp
c000184a:	eb fe                	jmp    c000184a <general_intr_handler+0xe5>
c000184c:	90                   	nop
c000184d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0001850:	c9                   	leave  
c0001851:	c3                   	ret    

c0001852 <register_handler>:
c0001852:	55                   	push   %ebp
c0001853:	89 e5                	mov    %esp,%ebp
c0001855:	83 ec 04             	sub    $0x4,%esp
c0001858:	e8 96 02 00 00       	call   c0001af3 <__x86.get_pc_thunk.ax>
c000185d:	05 a3 47 00 00       	add    $0x47a3,%eax
c0001862:	8b 55 08             	mov    0x8(%ebp),%edx
c0001865:	88 55 fc             	mov    %dl,-0x4(%ebp)
c0001868:	0f b6 55 fc          	movzbl -0x4(%ebp),%edx
c000186c:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c000186f:	89 8c 90 40 01 00 00 	mov    %ecx,0x140(%eax,%edx,4)
c0001876:	90                   	nop
c0001877:	c9                   	leave  
c0001878:	c3                   	ret    

c0001879 <exception_init>:
c0001879:	55                   	push   %ebp
c000187a:	89 e5                	mov    %esp,%ebp
c000187c:	83 ec 10             	sub    $0x10,%esp
c000187f:	e8 6f 02 00 00       	call   c0001af3 <__x86.get_pc_thunk.ax>
c0001884:	05 7c 47 00 00       	add    $0x477c,%eax
c0001889:	c6 45 ff 00          	movb   $0x0,-0x1(%ebp)
c000188d:	eb 2c                	jmp    c00018bb <exception_init+0x42>
c000188f:	0f b6 55 ff          	movzbl -0x1(%ebp),%edx
c0001893:	8d 88 65 b7 ff ff    	lea    -0x489b(%eax),%ecx
c0001899:	89 8c 90 40 01 00 00 	mov    %ecx,0x140(%eax,%edx,4)
c00018a0:	0f b6 55 ff          	movzbl -0x1(%ebp),%edx
c00018a4:	8d 88 c9 e0 ff ff    	lea    -0x1f37(%eax),%ecx
c00018aa:	89 8c 90 a0 00 00 00 	mov    %ecx,0xa0(%eax,%edx,4)
c00018b1:	0f b6 55 ff          	movzbl -0x1(%ebp),%edx
c00018b5:	83 c2 01             	add    $0x1,%edx
c00018b8:	88 55 ff             	mov    %dl,-0x1(%ebp)
c00018bb:	80 7d ff 20          	cmpb   $0x20,-0x1(%ebp)
c00018bf:	76 ce                	jbe    c000188f <exception_init+0x16>
c00018c1:	8d 90 d0 e0 ff ff    	lea    -0x1f30(%eax),%edx
c00018c7:	89 90 a0 00 00 00    	mov    %edx,0xa0(%eax)
c00018cd:	8d 90 e1 e0 ff ff    	lea    -0x1f1f(%eax),%edx
c00018d3:	89 90 a4 00 00 00    	mov    %edx,0xa4(%eax)
c00018d9:	8d 90 f5 e0 ff ff    	lea    -0x1f0b(%eax),%edx
c00018df:	89 90 a8 00 00 00    	mov    %edx,0xa8(%eax)
c00018e5:	8d 90 03 e1 ff ff    	lea    -0x1efd(%eax),%edx
c00018eb:	89 90 ac 00 00 00    	mov    %edx,0xac(%eax)
c00018f1:	8d 90 1c e1 ff ff    	lea    -0x1ee4(%eax),%edx
c00018f7:	89 90 b0 00 00 00    	mov    %edx,0xb0(%eax)
c00018fd:	8d 90 34 e1 ff ff    	lea    -0x1ecc(%eax),%edx
c0001903:	89 90 b4 00 00 00    	mov    %edx,0xb4(%eax)
c0001909:	8d 90 57 e1 ff ff    	lea    -0x1ea9(%eax),%edx
c000190f:	89 90 b8 00 00 00    	mov    %edx,0xb8(%eax)
c0001915:	8d 90 74 e1 ff ff    	lea    -0x1e8c(%eax),%edx
c000191b:	89 90 bc 00 00 00    	mov    %edx,0xbc(%eax)
c0001921:	8d 90 97 e1 ff ff    	lea    -0x1e69(%eax),%edx
c0001927:	89 90 c0 00 00 00    	mov    %edx,0xc0(%eax)
c000192d:	8d 90 b2 e1 ff ff    	lea    -0x1e4e(%eax),%edx
c0001933:	89 90 c4 00 00 00    	mov    %edx,0xc4(%eax)
c0001939:	8d 90 ce e1 ff ff    	lea    -0x1e32(%eax),%edx
c000193f:	89 90 c8 00 00 00    	mov    %edx,0xc8(%eax)
c0001945:	8d 90 e8 e1 ff ff    	lea    -0x1e18(%eax),%edx
c000194b:	89 90 cc 00 00 00    	mov    %edx,0xcc(%eax)
c0001951:	8d 90 00 e2 ff ff    	lea    -0x1e00(%eax),%edx
c0001957:	89 90 d0 00 00 00    	mov    %edx,0xd0(%eax)
c000195d:	8d 90 1c e2 ff ff    	lea    -0x1de4(%eax),%edx
c0001963:	89 90 d4 00 00 00    	mov    %edx,0xd4(%eax)
c0001969:	8d 90 3d e2 ff ff    	lea    -0x1dc3(%eax),%edx
c000196f:	89 90 d8 00 00 00    	mov    %edx,0xd8(%eax)
c0001975:	8d 90 58 e2 ff ff    	lea    -0x1da8(%eax),%edx
c000197b:	89 90 e0 00 00 00    	mov    %edx,0xe0(%eax)
c0001981:	8d 90 79 e2 ff ff    	lea    -0x1d87(%eax),%edx
c0001987:	89 90 e4 00 00 00    	mov    %edx,0xe4(%eax)
c000198d:	8d 90 97 e2 ff ff    	lea    -0x1d69(%eax),%edx
c0001993:	89 90 e8 00 00 00    	mov    %edx,0xe8(%eax)
c0001999:	8d 90 b4 e2 ff ff    	lea    -0x1d4c(%eax),%edx
c000199f:	89 90 ec 00 00 00    	mov    %edx,0xec(%eax)
c00019a5:	90                   	nop
c00019a6:	c9                   	leave  
c00019a7:	c3                   	ret    

c00019a8 <init_idt>:
c00019a8:	55                   	push   %ebp
c00019a9:	89 e5                	mov    %esp,%ebp
c00019ab:	53                   	push   %ebx
c00019ac:	83 ec 14             	sub    $0x14,%esp
c00019af:	e8 12 fc ff ff       	call   c00015c6 <__x86.get_pc_thunk.bx>
c00019b4:	81 c3 4c 46 00 00    	add    $0x464c,%ebx
c00019ba:	e8 4c fd ff ff       	call   c000170b <init_idt_desc>
c00019bf:	e8 b5 fe ff ff       	call   c0001879 <exception_init>
c00019c4:	e8 58 fc ff ff       	call   c0001621 <init_pic>
c00019c9:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c00019d0:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c00019d7:	8b 83 c4 01 00 00    	mov    0x1c4(%ebx),%eax
c00019dd:	c1 e0 10             	shl    $0x10,%eax
c00019e0:	0d 07 01 00 00       	or     $0x107,%eax
c00019e5:	ba 00 00 00 00       	mov    $0x0,%edx
c00019ea:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00019ed:	89 55 f4             	mov    %edx,-0xc(%ebp)
c00019f0:	0f 01 5d f0          	lidtl  -0x10(%ebp)
c00019f4:	83 ec 0c             	sub    $0xc,%esp
c00019f7:	8d 83 d6 e2 ff ff    	lea    -0x1d2a(%ebx),%eax
c00019fd:	50                   	push   %eax
c00019fe:	e8 6f 07 00 00       	call   c0002172 <put_str>
c0001a03:	83 c4 10             	add    $0x10,%esp
c0001a06:	8d 83 40 01 00 00    	lea    0x140(%ebx),%eax
c0001a0c:	83 ec 0c             	sub    $0xc,%esp
c0001a0f:	50                   	push   %eax
c0001a10:	e8 7d 07 00 00       	call   c0002192 <put_int>
c0001a15:	83 c4 10             	add    $0x10,%esp
c0001a18:	83 ec 0c             	sub    $0xc,%esp
c0001a1b:	8d 83 e0 e2 ff ff    	lea    -0x1d20(%ebx),%eax
c0001a21:	50                   	push   %eax
c0001a22:	e8 4b 07 00 00       	call   c0002172 <put_str>
c0001a27:	83 c4 10             	add    $0x10,%esp
c0001a2a:	8b 83 40 01 00 00    	mov    0x140(%ebx),%eax
c0001a30:	83 ec 0c             	sub    $0xc,%esp
c0001a33:	50                   	push   %eax
c0001a34:	e8 59 07 00 00       	call   c0002192 <put_int>
c0001a39:	83 c4 10             	add    $0x10,%esp
c0001a3c:	90                   	nop
c0001a3d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0001a40:	c9                   	leave  
c0001a41:	c3                   	ret    

c0001a42 <intr_enable>:
c0001a42:	55                   	push   %ebp
c0001a43:	89 e5                	mov    %esp,%ebp
c0001a45:	83 ec 18             	sub    $0x18,%esp
c0001a48:	e8 a6 00 00 00       	call   c0001af3 <__x86.get_pc_thunk.ax>
c0001a4d:	05 b3 45 00 00       	add    $0x45b3,%eax
c0001a52:	e8 51 00 00 00       	call   c0001aa8 <intr_get_status>
c0001a57:	83 f8 01             	cmp    $0x1,%eax
c0001a5a:	75 0c                	jne    c0001a68 <intr_enable+0x26>
c0001a5c:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
c0001a63:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0001a66:	eb 0b                	jmp    c0001a73 <intr_enable+0x31>
c0001a68:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0001a6f:	fb                   	sti    
c0001a70:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0001a73:	c9                   	leave  
c0001a74:	c3                   	ret    

c0001a75 <intr_disable>:
c0001a75:	55                   	push   %ebp
c0001a76:	89 e5                	mov    %esp,%ebp
c0001a78:	83 ec 18             	sub    $0x18,%esp
c0001a7b:	e8 73 00 00 00       	call   c0001af3 <__x86.get_pc_thunk.ax>
c0001a80:	05 80 45 00 00       	add    $0x4580,%eax
c0001a85:	e8 1e 00 00 00       	call   c0001aa8 <intr_get_status>
c0001a8a:	83 f8 01             	cmp    $0x1,%eax
c0001a8d:	75 0d                	jne    c0001a9c <intr_disable+0x27>
c0001a8f:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
c0001a96:	fa                   	cli    
c0001a97:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0001a9a:	eb 0a                	jmp    c0001aa6 <intr_disable+0x31>
c0001a9c:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0001aa3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0001aa6:	c9                   	leave  
c0001aa7:	c3                   	ret    

c0001aa8 <intr_get_status>:
c0001aa8:	55                   	push   %ebp
c0001aa9:	89 e5                	mov    %esp,%ebp
c0001aab:	83 ec 10             	sub    $0x10,%esp
c0001aae:	e8 40 00 00 00       	call   c0001af3 <__x86.get_pc_thunk.ax>
c0001ab3:	05 4d 45 00 00       	add    $0x454d,%eax
c0001ab8:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0001abf:	9c                   	pushf  
c0001ac0:	58                   	pop    %eax
c0001ac1:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0001ac4:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0001ac7:	c1 e8 09             	shr    $0x9,%eax
c0001aca:	83 e0 01             	and    $0x1,%eax
c0001acd:	c9                   	leave  
c0001ace:	c3                   	ret    

c0001acf <intr_set_status>:
c0001acf:	55                   	push   %ebp
c0001ad0:	89 e5                	mov    %esp,%ebp
c0001ad2:	83 ec 08             	sub    $0x8,%esp
c0001ad5:	e8 19 00 00 00       	call   c0001af3 <__x86.get_pc_thunk.ax>
c0001ada:	05 26 45 00 00       	add    $0x4526,%eax
c0001adf:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
c0001ae3:	75 07                	jne    c0001aec <intr_set_status+0x1d>
c0001ae5:	e8 58 ff ff ff       	call   c0001a42 <intr_enable>
c0001aea:	eb 05                	jmp    c0001af1 <intr_set_status+0x22>
c0001aec:	e8 84 ff ff ff       	call   c0001a75 <intr_disable>
c0001af1:	c9                   	leave  
c0001af2:	c3                   	ret    

c0001af3 <__x86.get_pc_thunk.ax>:
c0001af3:	8b 04 24             	mov    (%esp),%eax
c0001af6:	c3                   	ret    

c0001af7 <outb>:
c0001af7:	55                   	push   %ebp
c0001af8:	89 e5                	mov    %esp,%ebp
c0001afa:	83 ec 08             	sub    $0x8,%esp
c0001afd:	e8 f1 ff ff ff       	call   c0001af3 <__x86.get_pc_thunk.ax>
c0001b02:	05 fe 44 00 00       	add    $0x44fe,%eax
c0001b07:	8b 45 08             	mov    0x8(%ebp),%eax
c0001b0a:	8b 55 0c             	mov    0xc(%ebp),%edx
c0001b0d:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0001b11:	89 d0                	mov    %edx,%eax
c0001b13:	88 45 f8             	mov    %al,-0x8(%ebp)
c0001b16:	0f b6 45 f8          	movzbl -0x8(%ebp),%eax
c0001b1a:	0f b7 55 fc          	movzwl -0x4(%ebp),%edx
c0001b1e:	ee                   	out    %al,(%dx)
c0001b1f:	90                   	nop
c0001b20:	c9                   	leave  
c0001b21:	c3                   	ret    

c0001b22 <frequency_set>:
c0001b22:	55                   	push   %ebp
c0001b23:	89 e5                	mov    %esp,%ebp
c0001b25:	57                   	push   %edi
c0001b26:	56                   	push   %esi
c0001b27:	53                   	push   %ebx
c0001b28:	83 ec 14             	sub    $0x14,%esp
c0001b2b:	e8 c3 ff ff ff       	call   c0001af3 <__x86.get_pc_thunk.ax>
c0001b30:	05 d0 44 00 00       	add    $0x44d0,%eax
c0001b35:	8b 75 08             	mov    0x8(%ebp),%esi
c0001b38:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0001b3b:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0001b3e:	8b 55 14             	mov    0x14(%ebp),%edx
c0001b41:	8b 7d 18             	mov    0x18(%ebp),%edi
c0001b44:	89 f0                	mov    %esi,%eax
c0001b46:	88 45 f0             	mov    %al,-0x10(%ebp)
c0001b49:	88 5d ec             	mov    %bl,-0x14(%ebp)
c0001b4c:	88 4d e8             	mov    %cl,-0x18(%ebp)
c0001b4f:	88 55 e4             	mov    %dl,-0x1c(%ebp)
c0001b52:	89 f8                	mov    %edi,%eax
c0001b54:	66 89 45 e0          	mov    %ax,-0x20(%ebp)
c0001b58:	0f b6 45 ec          	movzbl -0x14(%ebp),%eax
c0001b5c:	c1 e0 06             	shl    $0x6,%eax
c0001b5f:	89 c2                	mov    %eax,%edx
c0001b61:	0f b6 45 e8          	movzbl -0x18(%ebp),%eax
c0001b65:	c1 e0 04             	shl    $0x4,%eax
c0001b68:	09 c2                	or     %eax,%edx
c0001b6a:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
c0001b6e:	01 c0                	add    %eax,%eax
c0001b70:	09 d0                	or     %edx,%eax
c0001b72:	0f b6 c0             	movzbl %al,%eax
c0001b75:	50                   	push   %eax
c0001b76:	6a 43                	push   $0x43
c0001b78:	e8 7a ff ff ff       	call   c0001af7 <outb>
c0001b7d:	83 c4 08             	add    $0x8,%esp
c0001b80:	0f b7 45 e0          	movzwl -0x20(%ebp),%eax
c0001b84:	0f b6 d0             	movzbl %al,%edx
c0001b87:	0f b6 45 f0          	movzbl -0x10(%ebp),%eax
c0001b8b:	52                   	push   %edx
c0001b8c:	50                   	push   %eax
c0001b8d:	e8 65 ff ff ff       	call   c0001af7 <outb>
c0001b92:	83 c4 08             	add    $0x8,%esp
c0001b95:	0f b7 45 e0          	movzwl -0x20(%ebp),%eax
c0001b99:	0f b6 c0             	movzbl %al,%eax
c0001b9c:	c1 f8 08             	sar    $0x8,%eax
c0001b9f:	0f b6 d0             	movzbl %al,%edx
c0001ba2:	0f b6 45 f0          	movzbl -0x10(%ebp),%eax
c0001ba6:	52                   	push   %edx
c0001ba7:	50                   	push   %eax
c0001ba8:	e8 4a ff ff ff       	call   c0001af7 <outb>
c0001bad:	83 c4 08             	add    $0x8,%esp
c0001bb0:	90                   	nop
c0001bb1:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0001bb4:	5b                   	pop    %ebx
c0001bb5:	5e                   	pop    %esi
c0001bb6:	5f                   	pop    %edi
c0001bb7:	5d                   	pop    %ebp
c0001bb8:	c3                   	ret    

c0001bb9 <timer_intr>:
c0001bb9:	55                   	push   %ebp
c0001bba:	89 e5                	mov    %esp,%ebp
c0001bbc:	53                   	push   %ebx
c0001bbd:	83 ec 14             	sub    $0x14,%esp
c0001bc0:	e8 01 fa ff ff       	call   c00015c6 <__x86.get_pc_thunk.bx>
c0001bc5:	81 c3 3b 44 00 00    	add    $0x443b,%ebx
c0001bcb:	e8 40 14 00 00       	call   c0003010 <running_thread>
c0001bd0:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0001bd3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0001bd6:	8b 40 30             	mov    0x30(%eax),%eax
c0001bd9:	3d 13 09 22 20       	cmp    $0x20220913,%eax
c0001bde:	74 1f                	je     c0001bff <timer_intr+0x46>
c0001be0:	8d 83 ec e2 ff ff    	lea    -0x1d14(%ebx),%eax
c0001be6:	50                   	push   %eax
c0001be7:	8d 83 18 e3 ff ff    	lea    -0x1ce8(%ebx),%eax
c0001bed:	50                   	push   %eax
c0001bee:	6a 25                	push   $0x25
c0001bf0:	8d 83 10 e3 ff ff    	lea    -0x1cf0(%ebx),%eax
c0001bf6:	50                   	push   %eax
c0001bf7:	e8 24 06 00 00       	call   c0002220 <panic_spin>
c0001bfc:	83 c4 10             	add    $0x10,%esp
c0001bff:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0001c02:	8b 40 10             	mov    0x10(%eax),%eax
c0001c05:	8d 50 01             	lea    0x1(%eax),%edx
c0001c08:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0001c0b:	89 50 10             	mov    %edx,0x10(%eax)
c0001c0e:	8b 83 c8 01 00 00    	mov    0x1c8(%ebx),%eax
c0001c14:	83 c0 01             	add    $0x1,%eax
c0001c17:	89 83 c8 01 00 00    	mov    %eax,0x1c8(%ebx)
c0001c1d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0001c20:	0f b6 40 0c          	movzbl 0xc(%eax),%eax
c0001c24:	84 c0                	test   %al,%al
c0001c26:	75 07                	jne    c0001c2f <timer_intr+0x76>
c0001c28:	e8 f2 16 00 00       	call   c000331f <schedule>
c0001c2d:	eb 10                	jmp    c0001c3f <timer_intr+0x86>
c0001c2f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0001c32:	0f b6 40 0c          	movzbl 0xc(%eax),%eax
c0001c36:	8d 50 ff             	lea    -0x1(%eax),%edx
c0001c39:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0001c3c:	88 50 0c             	mov    %dl,0xc(%eax)
c0001c3f:	90                   	nop
c0001c40:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0001c43:	c9                   	leave  
c0001c44:	c3                   	ret    

c0001c45 <init_time>:
c0001c45:	55                   	push   %ebp
c0001c46:	89 e5                	mov    %esp,%ebp
c0001c48:	53                   	push   %ebx
c0001c49:	83 ec 04             	sub    $0x4,%esp
c0001c4c:	e8 75 f9 ff ff       	call   c00015c6 <__x86.get_pc_thunk.bx>
c0001c51:	81 c3 af 43 00 00    	add    $0x43af,%ebx
c0001c57:	68 9b 2e 00 00       	push   $0x2e9b
c0001c5c:	6a 02                	push   $0x2
c0001c5e:	6a 03                	push   $0x3
c0001c60:	6a 00                	push   $0x0
c0001c62:	6a 40                	push   $0x40
c0001c64:	e8 b9 fe ff ff       	call   c0001b22 <frequency_set>
c0001c69:	83 c4 14             	add    $0x14,%esp
c0001c6c:	83 ec 08             	sub    $0x8,%esp
c0001c6f:	8d 83 b9 bb ff ff    	lea    -0x4447(%ebx),%eax
c0001c75:	50                   	push   %eax
c0001c76:	6a 20                	push   $0x20
c0001c78:	e8 d5 fb ff ff       	call   c0001852 <register_handler>
c0001c7d:	83 c4 10             	add    $0x10,%esp
c0001c80:	90                   	nop
c0001c81:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0001c84:	c9                   	leave  
c0001c85:	c3                   	ret    
c0001c86:	66 90                	xchg   %ax,%ax
c0001c88:	66 90                	xchg   %ax,%ax
c0001c8a:	66 90                	xchg   %ax,%ax
c0001c8c:	66 90                	xchg   %ax,%ax
c0001c8e:	66 90                	xchg   %ax,%ax

c0001c90 <intr_exit>:
c0001c90:	61                   	popa   
c0001c91:	0f a9                	pop    %gs
c0001c93:	0f a1                	pop    %fs
c0001c95:	07                   	pop    %es
c0001c96:	1f                   	pop    %ds
c0001c97:	83 c4 04             	add    $0x4,%esp
c0001c9a:	cf                   	iret   

c0001c9b <intr0x0entry>:
c0001c9b:	6a 00                	push   $0x0
c0001c9d:	1e                   	push   %ds
c0001c9e:	06                   	push   %es
c0001c9f:	0f a0                	push   %fs
c0001ca1:	0f a8                	push   %gs
c0001ca3:	60                   	pusha  
c0001ca4:	b0 20                	mov    $0x20,%al
c0001ca6:	e6 a0                	out    %al,$0xa0
c0001ca8:	e6 20                	out    %al,$0x20
c0001caa:	6a 00                	push   $0x0
c0001cac:	ff 15 40 61 00 c0    	call   *0xc0006140
c0001cb2:	83 c4 04             	add    $0x4,%esp
c0001cb5:	eb d9                	jmp    c0001c90 <intr_exit>

c0001cb7 <intr0X1entry>:
c0001cb7:	6a 00                	push   $0x0
c0001cb9:	1e                   	push   %ds
c0001cba:	06                   	push   %es
c0001cbb:	0f a0                	push   %fs
c0001cbd:	0f a8                	push   %gs
c0001cbf:	60                   	pusha  
c0001cc0:	b0 20                	mov    $0x20,%al
c0001cc2:	e6 a0                	out    %al,$0xa0
c0001cc4:	e6 20                	out    %al,$0x20
c0001cc6:	6a 01                	push   $0x1
c0001cc8:	ff 15 44 61 00 c0    	call   *0xc0006144
c0001cce:	83 c4 04             	add    $0x4,%esp
c0001cd1:	eb bd                	jmp    c0001c90 <intr_exit>

c0001cd3 <intr0X2entry>:
c0001cd3:	6a 00                	push   $0x0
c0001cd5:	1e                   	push   %ds
c0001cd6:	06                   	push   %es
c0001cd7:	0f a0                	push   %fs
c0001cd9:	0f a8                	push   %gs
c0001cdb:	60                   	pusha  
c0001cdc:	b0 20                	mov    $0x20,%al
c0001cde:	e6 a0                	out    %al,$0xa0
c0001ce0:	e6 20                	out    %al,$0x20
c0001ce2:	6a 02                	push   $0x2
c0001ce4:	ff 15 48 61 00 c0    	call   *0xc0006148
c0001cea:	83 c4 04             	add    $0x4,%esp
c0001ced:	eb a1                	jmp    c0001c90 <intr_exit>

c0001cef <intr0x3entry>:
c0001cef:	6a 00                	push   $0x0
c0001cf1:	1e                   	push   %ds
c0001cf2:	06                   	push   %es
c0001cf3:	0f a0                	push   %fs
c0001cf5:	0f a8                	push   %gs
c0001cf7:	60                   	pusha  
c0001cf8:	b0 20                	mov    $0x20,%al
c0001cfa:	e6 a0                	out    %al,$0xa0
c0001cfc:	e6 20                	out    %al,$0x20
c0001cfe:	6a 03                	push   $0x3
c0001d00:	ff 15 4c 61 00 c0    	call   *0xc000614c
c0001d06:	83 c4 04             	add    $0x4,%esp
c0001d09:	eb 85                	jmp    c0001c90 <intr_exit>

c0001d0b <intr0X4entry>:
c0001d0b:	6a 00                	push   $0x0
c0001d0d:	1e                   	push   %ds
c0001d0e:	06                   	push   %es
c0001d0f:	0f a0                	push   %fs
c0001d11:	0f a8                	push   %gs
c0001d13:	60                   	pusha  
c0001d14:	b0 20                	mov    $0x20,%al
c0001d16:	e6 a0                	out    %al,$0xa0
c0001d18:	e6 20                	out    %al,$0x20
c0001d1a:	6a 04                	push   $0x4
c0001d1c:	ff 15 50 61 00 c0    	call   *0xc0006150
c0001d22:	83 c4 04             	add    $0x4,%esp
c0001d25:	e9 66 ff ff ff       	jmp    c0001c90 <intr_exit>

c0001d2a <intr0X5entry>:
c0001d2a:	6a 00                	push   $0x0
c0001d2c:	1e                   	push   %ds
c0001d2d:	06                   	push   %es
c0001d2e:	0f a0                	push   %fs
c0001d30:	0f a8                	push   %gs
c0001d32:	60                   	pusha  
c0001d33:	b0 20                	mov    $0x20,%al
c0001d35:	e6 a0                	out    %al,$0xa0
c0001d37:	e6 20                	out    %al,$0x20
c0001d39:	6a 05                	push   $0x5
c0001d3b:	ff 15 54 61 00 c0    	call   *0xc0006154
c0001d41:	83 c4 04             	add    $0x4,%esp
c0001d44:	e9 47 ff ff ff       	jmp    c0001c90 <intr_exit>

c0001d49 <intr0x6entry>:
c0001d49:	6a 00                	push   $0x0
c0001d4b:	1e                   	push   %ds
c0001d4c:	06                   	push   %es
c0001d4d:	0f a0                	push   %fs
c0001d4f:	0f a8                	push   %gs
c0001d51:	60                   	pusha  
c0001d52:	b0 20                	mov    $0x20,%al
c0001d54:	e6 a0                	out    %al,$0xa0
c0001d56:	e6 20                	out    %al,$0x20
c0001d58:	6a 06                	push   $0x6
c0001d5a:	ff 15 58 61 00 c0    	call   *0xc0006158
c0001d60:	83 c4 04             	add    $0x4,%esp
c0001d63:	e9 28 ff ff ff       	jmp    c0001c90 <intr_exit>

c0001d68 <intr0X7entry>:
c0001d68:	6a 00                	push   $0x0
c0001d6a:	1e                   	push   %ds
c0001d6b:	06                   	push   %es
c0001d6c:	0f a0                	push   %fs
c0001d6e:	0f a8                	push   %gs
c0001d70:	60                   	pusha  
c0001d71:	b0 20                	mov    $0x20,%al
c0001d73:	e6 a0                	out    %al,$0xa0
c0001d75:	e6 20                	out    %al,$0x20
c0001d77:	6a 07                	push   $0x7
c0001d79:	ff 15 5c 61 00 c0    	call   *0xc000615c
c0001d7f:	83 c4 04             	add    $0x4,%esp
c0001d82:	e9 09 ff ff ff       	jmp    c0001c90 <intr_exit>

c0001d87 <intr0X8entry>:
c0001d87:	90                   	nop
c0001d88:	1e                   	push   %ds
c0001d89:	06                   	push   %es
c0001d8a:	0f a0                	push   %fs
c0001d8c:	0f a8                	push   %gs
c0001d8e:	60                   	pusha  
c0001d8f:	b0 20                	mov    $0x20,%al
c0001d91:	e6 a0                	out    %al,$0xa0
c0001d93:	e6 20                	out    %al,$0x20
c0001d95:	6a 08                	push   $0x8
c0001d97:	ff 15 60 61 00 c0    	call   *0xc0006160
c0001d9d:	83 c4 04             	add    $0x4,%esp
c0001da0:	e9 eb fe ff ff       	jmp    c0001c90 <intr_exit>

c0001da5 <intr0x9entry>:
c0001da5:	6a 00                	push   $0x0
c0001da7:	1e                   	push   %ds
c0001da8:	06                   	push   %es
c0001da9:	0f a0                	push   %fs
c0001dab:	0f a8                	push   %gs
c0001dad:	60                   	pusha  
c0001dae:	b0 20                	mov    $0x20,%al
c0001db0:	e6 a0                	out    %al,$0xa0
c0001db2:	e6 20                	out    %al,$0x20
c0001db4:	6a 09                	push   $0x9
c0001db6:	ff 15 64 61 00 c0    	call   *0xc0006164
c0001dbc:	83 c4 04             	add    $0x4,%esp
c0001dbf:	e9 cc fe ff ff       	jmp    c0001c90 <intr_exit>

c0001dc4 <intr0XAentry>:
c0001dc4:	90                   	nop
c0001dc5:	1e                   	push   %ds
c0001dc6:	06                   	push   %es
c0001dc7:	0f a0                	push   %fs
c0001dc9:	0f a8                	push   %gs
c0001dcb:	60                   	pusha  
c0001dcc:	b0 20                	mov    $0x20,%al
c0001dce:	e6 a0                	out    %al,$0xa0
c0001dd0:	e6 20                	out    %al,$0x20
c0001dd2:	6a 0a                	push   $0xa
c0001dd4:	ff 15 68 61 00 c0    	call   *0xc0006168
c0001dda:	83 c4 04             	add    $0x4,%esp
c0001ddd:	e9 ae fe ff ff       	jmp    c0001c90 <intr_exit>

c0001de2 <intr0XBentry>:
c0001de2:	90                   	nop
c0001de3:	1e                   	push   %ds
c0001de4:	06                   	push   %es
c0001de5:	0f a0                	push   %fs
c0001de7:	0f a8                	push   %gs
c0001de9:	60                   	pusha  
c0001dea:	b0 20                	mov    $0x20,%al
c0001dec:	e6 a0                	out    %al,$0xa0
c0001dee:	e6 20                	out    %al,$0x20
c0001df0:	6a 0b                	push   $0xb
c0001df2:	ff 15 6c 61 00 c0    	call   *0xc000616c
c0001df8:	83 c4 04             	add    $0x4,%esp
c0001dfb:	e9 90 fe ff ff       	jmp    c0001c90 <intr_exit>

c0001e00 <intr0XCentry>:
c0001e00:	90                   	nop
c0001e01:	1e                   	push   %ds
c0001e02:	06                   	push   %es
c0001e03:	0f a0                	push   %fs
c0001e05:	0f a8                	push   %gs
c0001e07:	60                   	pusha  
c0001e08:	b0 20                	mov    $0x20,%al
c0001e0a:	e6 a0                	out    %al,$0xa0
c0001e0c:	e6 20                	out    %al,$0x20
c0001e0e:	6a 0c                	push   $0xc
c0001e10:	ff 15 70 61 00 c0    	call   *0xc0006170
c0001e16:	83 c4 04             	add    $0x4,%esp
c0001e19:	e9 72 fe ff ff       	jmp    c0001c90 <intr_exit>

c0001e1e <intr0XDentry>:
c0001e1e:	90                   	nop
c0001e1f:	1e                   	push   %ds
c0001e20:	06                   	push   %es
c0001e21:	0f a0                	push   %fs
c0001e23:	0f a8                	push   %gs
c0001e25:	60                   	pusha  
c0001e26:	b0 20                	mov    $0x20,%al
c0001e28:	e6 a0                	out    %al,$0xa0
c0001e2a:	e6 20                	out    %al,$0x20
c0001e2c:	6a 0d                	push   $0xd
c0001e2e:	ff 15 74 61 00 c0    	call   *0xc0006174
c0001e34:	83 c4 04             	add    $0x4,%esp
c0001e37:	e9 54 fe ff ff       	jmp    c0001c90 <intr_exit>

c0001e3c <intr0XEentry>:
c0001e3c:	90                   	nop
c0001e3d:	1e                   	push   %ds
c0001e3e:	06                   	push   %es
c0001e3f:	0f a0                	push   %fs
c0001e41:	0f a8                	push   %gs
c0001e43:	60                   	pusha  
c0001e44:	b0 20                	mov    $0x20,%al
c0001e46:	e6 a0                	out    %al,$0xa0
c0001e48:	e6 20                	out    %al,$0x20
c0001e4a:	6a 0e                	push   $0xe
c0001e4c:	ff 15 78 61 00 c0    	call   *0xc0006178
c0001e52:	83 c4 04             	add    $0x4,%esp
c0001e55:	e9 36 fe ff ff       	jmp    c0001c90 <intr_exit>

c0001e5a <intr0XFentry>:
c0001e5a:	6a 00                	push   $0x0
c0001e5c:	1e                   	push   %ds
c0001e5d:	06                   	push   %es
c0001e5e:	0f a0                	push   %fs
c0001e60:	0f a8                	push   %gs
c0001e62:	60                   	pusha  
c0001e63:	b0 20                	mov    $0x20,%al
c0001e65:	e6 a0                	out    %al,$0xa0
c0001e67:	e6 20                	out    %al,$0x20
c0001e69:	6a 0f                	push   $0xf
c0001e6b:	ff 15 7c 61 00 c0    	call   *0xc000617c
c0001e71:	83 c4 04             	add    $0x4,%esp
c0001e74:	e9 17 fe ff ff       	jmp    c0001c90 <intr_exit>

c0001e79 <intr0X10entry>:
c0001e79:	6a 00                	push   $0x0
c0001e7b:	1e                   	push   %ds
c0001e7c:	06                   	push   %es
c0001e7d:	0f a0                	push   %fs
c0001e7f:	0f a8                	push   %gs
c0001e81:	60                   	pusha  
c0001e82:	b0 20                	mov    $0x20,%al
c0001e84:	e6 a0                	out    %al,$0xa0
c0001e86:	e6 20                	out    %al,$0x20
c0001e88:	6a 10                	push   $0x10
c0001e8a:	ff 15 80 61 00 c0    	call   *0xc0006180
c0001e90:	83 c4 04             	add    $0x4,%esp
c0001e93:	e9 f8 fd ff ff       	jmp    c0001c90 <intr_exit>

c0001e98 <intr0X11entry>:
c0001e98:	90                   	nop
c0001e99:	1e                   	push   %ds
c0001e9a:	06                   	push   %es
c0001e9b:	0f a0                	push   %fs
c0001e9d:	0f a8                	push   %gs
c0001e9f:	60                   	pusha  
c0001ea0:	b0 20                	mov    $0x20,%al
c0001ea2:	e6 a0                	out    %al,$0xa0
c0001ea4:	e6 20                	out    %al,$0x20
c0001ea6:	6a 11                	push   $0x11
c0001ea8:	ff 15 84 61 00 c0    	call   *0xc0006184
c0001eae:	83 c4 04             	add    $0x4,%esp
c0001eb1:	e9 da fd ff ff       	jmp    c0001c90 <intr_exit>

c0001eb6 <intr0x12entry>:
c0001eb6:	6a 00                	push   $0x0
c0001eb8:	1e                   	push   %ds
c0001eb9:	06                   	push   %es
c0001eba:	0f a0                	push   %fs
c0001ebc:	0f a8                	push   %gs
c0001ebe:	60                   	pusha  
c0001ebf:	b0 20                	mov    $0x20,%al
c0001ec1:	e6 a0                	out    %al,$0xa0
c0001ec3:	e6 20                	out    %al,$0x20
c0001ec5:	6a 12                	push   $0x12
c0001ec7:	ff 15 88 61 00 c0    	call   *0xc0006188
c0001ecd:	83 c4 04             	add    $0x4,%esp
c0001ed0:	e9 bb fd ff ff       	jmp    c0001c90 <intr_exit>

c0001ed5 <intr0X13entry>:
c0001ed5:	6a 00                	push   $0x0
c0001ed7:	1e                   	push   %ds
c0001ed8:	06                   	push   %es
c0001ed9:	0f a0                	push   %fs
c0001edb:	0f a8                	push   %gs
c0001edd:	60                   	pusha  
c0001ede:	b0 20                	mov    $0x20,%al
c0001ee0:	e6 a0                	out    %al,$0xa0
c0001ee2:	e6 20                	out    %al,$0x20
c0001ee4:	6a 13                	push   $0x13
c0001ee6:	ff 15 8c 61 00 c0    	call   *0xc000618c
c0001eec:	83 c4 04             	add    $0x4,%esp
c0001eef:	e9 9c fd ff ff       	jmp    c0001c90 <intr_exit>

c0001ef4 <intr0X14entry>:
c0001ef4:	6a 00                	push   $0x0
c0001ef6:	1e                   	push   %ds
c0001ef7:	06                   	push   %es
c0001ef8:	0f a0                	push   %fs
c0001efa:	0f a8                	push   %gs
c0001efc:	60                   	pusha  
c0001efd:	b0 20                	mov    $0x20,%al
c0001eff:	e6 a0                	out    %al,$0xa0
c0001f01:	e6 20                	out    %al,$0x20
c0001f03:	6a 14                	push   $0x14
c0001f05:	ff 15 90 61 00 c0    	call   *0xc0006190
c0001f0b:	83 c4 04             	add    $0x4,%esp
c0001f0e:	e9 7d fd ff ff       	jmp    c0001c90 <intr_exit>

c0001f13 <intr0x15entry>:
c0001f13:	6a 00                	push   $0x0
c0001f15:	1e                   	push   %ds
c0001f16:	06                   	push   %es
c0001f17:	0f a0                	push   %fs
c0001f19:	0f a8                	push   %gs
c0001f1b:	60                   	pusha  
c0001f1c:	b0 20                	mov    $0x20,%al
c0001f1e:	e6 a0                	out    %al,$0xa0
c0001f20:	e6 20                	out    %al,$0x20
c0001f22:	6a 15                	push   $0x15
c0001f24:	ff 15 94 61 00 c0    	call   *0xc0006194
c0001f2a:	83 c4 04             	add    $0x4,%esp
c0001f2d:	e9 5e fd ff ff       	jmp    c0001c90 <intr_exit>

c0001f32 <intr0X16entry>:
c0001f32:	6a 00                	push   $0x0
c0001f34:	1e                   	push   %ds
c0001f35:	06                   	push   %es
c0001f36:	0f a0                	push   %fs
c0001f38:	0f a8                	push   %gs
c0001f3a:	60                   	pusha  
c0001f3b:	b0 20                	mov    $0x20,%al
c0001f3d:	e6 a0                	out    %al,$0xa0
c0001f3f:	e6 20                	out    %al,$0x20
c0001f41:	6a 16                	push   $0x16
c0001f43:	ff 15 98 61 00 c0    	call   *0xc0006198
c0001f49:	83 c4 04             	add    $0x4,%esp
c0001f4c:	e9 3f fd ff ff       	jmp    c0001c90 <intr_exit>

c0001f51 <intr0X17entry>:
c0001f51:	6a 00                	push   $0x0
c0001f53:	1e                   	push   %ds
c0001f54:	06                   	push   %es
c0001f55:	0f a0                	push   %fs
c0001f57:	0f a8                	push   %gs
c0001f59:	60                   	pusha  
c0001f5a:	b0 20                	mov    $0x20,%al
c0001f5c:	e6 a0                	out    %al,$0xa0
c0001f5e:	e6 20                	out    %al,$0x20
c0001f60:	6a 17                	push   $0x17
c0001f62:	ff 15 9c 61 00 c0    	call   *0xc000619c
c0001f68:	83 c4 04             	add    $0x4,%esp
c0001f6b:	e9 20 fd ff ff       	jmp    c0001c90 <intr_exit>

c0001f70 <intr0X18entry>:
c0001f70:	6a 00                	push   $0x0
c0001f72:	1e                   	push   %ds
c0001f73:	06                   	push   %es
c0001f74:	0f a0                	push   %fs
c0001f76:	0f a8                	push   %gs
c0001f78:	60                   	pusha  
c0001f79:	b0 20                	mov    $0x20,%al
c0001f7b:	e6 a0                	out    %al,$0xa0
c0001f7d:	e6 20                	out    %al,$0x20
c0001f7f:	6a 18                	push   $0x18
c0001f81:	ff 15 a0 61 00 c0    	call   *0xc00061a0
c0001f87:	83 c4 04             	add    $0x4,%esp
c0001f8a:	e9 01 fd ff ff       	jmp    c0001c90 <intr_exit>

c0001f8f <intr0X19entry>:
c0001f8f:	6a 00                	push   $0x0
c0001f91:	1e                   	push   %ds
c0001f92:	06                   	push   %es
c0001f93:	0f a0                	push   %fs
c0001f95:	0f a8                	push   %gs
c0001f97:	60                   	pusha  
c0001f98:	b0 20                	mov    $0x20,%al
c0001f9a:	e6 a0                	out    %al,$0xa0
c0001f9c:	e6 20                	out    %al,$0x20
c0001f9e:	6a 19                	push   $0x19
c0001fa0:	ff 15 a4 61 00 c0    	call   *0xc00061a4
c0001fa6:	83 c4 04             	add    $0x4,%esp
c0001fa9:	e9 e2 fc ff ff       	jmp    c0001c90 <intr_exit>

c0001fae <intr0X1Aentry>:
c0001fae:	6a 00                	push   $0x0
c0001fb0:	1e                   	push   %ds
c0001fb1:	06                   	push   %es
c0001fb2:	0f a0                	push   %fs
c0001fb4:	0f a8                	push   %gs
c0001fb6:	60                   	pusha  
c0001fb7:	b0 20                	mov    $0x20,%al
c0001fb9:	e6 a0                	out    %al,$0xa0
c0001fbb:	e6 20                	out    %al,$0x20
c0001fbd:	6a 1a                	push   $0x1a
c0001fbf:	ff 15 a8 61 00 c0    	call   *0xc00061a8
c0001fc5:	83 c4 04             	add    $0x4,%esp
c0001fc8:	e9 c3 fc ff ff       	jmp    c0001c90 <intr_exit>

c0001fcd <intr0X1Bentry>:
c0001fcd:	6a 00                	push   $0x0
c0001fcf:	1e                   	push   %ds
c0001fd0:	06                   	push   %es
c0001fd1:	0f a0                	push   %fs
c0001fd3:	0f a8                	push   %gs
c0001fd5:	60                   	pusha  
c0001fd6:	b0 20                	mov    $0x20,%al
c0001fd8:	e6 a0                	out    %al,$0xa0
c0001fda:	e6 20                	out    %al,$0x20
c0001fdc:	6a 1b                	push   $0x1b
c0001fde:	ff 15 ac 61 00 c0    	call   *0xc00061ac
c0001fe4:	83 c4 04             	add    $0x4,%esp
c0001fe7:	e9 a4 fc ff ff       	jmp    c0001c90 <intr_exit>

c0001fec <intr0X1Centry>:
c0001fec:	6a 00                	push   $0x0
c0001fee:	1e                   	push   %ds
c0001fef:	06                   	push   %es
c0001ff0:	0f a0                	push   %fs
c0001ff2:	0f a8                	push   %gs
c0001ff4:	60                   	pusha  
c0001ff5:	b0 20                	mov    $0x20,%al
c0001ff7:	e6 a0                	out    %al,$0xa0
c0001ff9:	e6 20                	out    %al,$0x20
c0001ffb:	6a 1c                	push   $0x1c
c0001ffd:	ff 15 b0 61 00 c0    	call   *0xc00061b0
c0002003:	83 c4 04             	add    $0x4,%esp
c0002006:	e9 85 fc ff ff       	jmp    c0001c90 <intr_exit>

c000200b <intr0X1Dentry>:
c000200b:	6a 00                	push   $0x0
c000200d:	1e                   	push   %ds
c000200e:	06                   	push   %es
c000200f:	0f a0                	push   %fs
c0002011:	0f a8                	push   %gs
c0002013:	60                   	pusha  
c0002014:	b0 20                	mov    $0x20,%al
c0002016:	e6 a0                	out    %al,$0xa0
c0002018:	e6 20                	out    %al,$0x20
c000201a:	6a 1d                	push   $0x1d
c000201c:	ff 15 b4 61 00 c0    	call   *0xc00061b4
c0002022:	83 c4 04             	add    $0x4,%esp
c0002025:	e9 66 fc ff ff       	jmp    c0001c90 <intr_exit>

c000202a <intr0X1Eentry>:
c000202a:	90                   	nop
c000202b:	1e                   	push   %ds
c000202c:	06                   	push   %es
c000202d:	0f a0                	push   %fs
c000202f:	0f a8                	push   %gs
c0002031:	60                   	pusha  
c0002032:	b0 20                	mov    $0x20,%al
c0002034:	e6 a0                	out    %al,$0xa0
c0002036:	e6 20                	out    %al,$0x20
c0002038:	6a 1e                	push   $0x1e
c000203a:	ff 15 b8 61 00 c0    	call   *0xc00061b8
c0002040:	83 c4 04             	add    $0x4,%esp
c0002043:	e9 48 fc ff ff       	jmp    c0001c90 <intr_exit>

c0002048 <intr0X1Fentry>:
c0002048:	6a 00                	push   $0x0
c000204a:	1e                   	push   %ds
c000204b:	06                   	push   %es
c000204c:	0f a0                	push   %fs
c000204e:	0f a8                	push   %gs
c0002050:	60                   	pusha  
c0002051:	b0 20                	mov    $0x20,%al
c0002053:	e6 a0                	out    %al,$0xa0
c0002055:	e6 20                	out    %al,$0x20
c0002057:	6a 1f                	push   $0x1f
c0002059:	ff 15 bc 61 00 c0    	call   *0xc00061bc
c000205f:	83 c4 04             	add    $0x4,%esp
c0002062:	e9 29 fc ff ff       	jmp    c0001c90 <intr_exit>

c0002067 <intr0X20entry>:
c0002067:	6a 00                	push   $0x0
c0002069:	1e                   	push   %ds
c000206a:	06                   	push   %es
c000206b:	0f a0                	push   %fs
c000206d:	0f a8                	push   %gs
c000206f:	60                   	pusha  
c0002070:	b0 20                	mov    $0x20,%al
c0002072:	e6 a0                	out    %al,$0xa0
c0002074:	e6 20                	out    %al,$0x20
c0002076:	6a 20                	push   $0x20
c0002078:	ff 15 c0 61 00 c0    	call   *0xc00061c0
c000207e:	83 c4 04             	add    $0x4,%esp
c0002081:	e9 0a fc ff ff       	jmp    c0001c90 <intr_exit>
c0002086:	66 90                	xchg   %ax,%ax
c0002088:	66 90                	xchg   %ax,%ax
c000208a:	66 90                	xchg   %ax,%ax
c000208c:	66 90                	xchg   %ax,%ax
c000208e:	66 90                	xchg   %ax,%ax

c0002090 <put_char>:
c0002090:	55                   	push   %ebp
c0002091:	89 e5                	mov    %esp,%ebp
c0002093:	60                   	pusha  
c0002094:	66 b8 18 00          	mov    $0x18,%ax
c0002098:	8e e8                	mov    %eax,%gs
c000209a:	66 ba d4 03          	mov    $0x3d4,%dx
c000209e:	b0 0e                	mov    $0xe,%al
c00020a0:	ee                   	out    %al,(%dx)
c00020a1:	66 ba d5 03          	mov    $0x3d5,%dx
c00020a5:	ec                   	in     (%dx),%al
c00020a6:	66 c1 e0 08          	shl    $0x8,%ax
c00020aa:	66 ba d4 03          	mov    $0x3d4,%dx
c00020ae:	b0 0f                	mov    $0xf,%al
c00020b0:	ee                   	out    %al,(%dx)
c00020b1:	66 ba d5 03          	mov    $0x3d5,%dx
c00020b5:	ec                   	in     (%dx),%al
c00020b6:	66 89 c3             	mov    %ax,%bx
c00020b9:	8b 45 08             	mov    0x8(%ebp),%eax
c00020bc:	3c 0d                	cmp    $0xd,%al
c00020be:	74 44                	je     c0002104 <put_char.is_carriage_return>
c00020c0:	3c 0a                	cmp    $0xa,%al
c00020c2:	74 52                	je     c0002116 <put_char.is_line_feed>
c00020c4:	3c 08                	cmp    $0x8,%al
c00020c6:	74 02                	je     c00020ca <put_char.is_backspace>
c00020c8:	eb 1f                	jmp    c00020e9 <put_char.put_other>

c00020ca <put_char.is_backspace>:
c00020ca:	66 83 fb 00          	cmp    $0x0,%bx
c00020ce:	0f 84 90 00 00 00    	je     c0002164 <put_char.set_cursor>
c00020d4:	66 4b                	dec    %bx
c00020d6:	66 d1 e3             	shl    %bx
c00020d9:	65 67 c6 07 20       	movb   $0x20,%gs:(%bx)
c00020de:	65 67 c6 47 01 07    	movb   $0x7,%gs:0x1(%bx)
c00020e4:	66 d1 eb             	shr    %bx
c00020e7:	eb 7b                	jmp    c0002164 <put_char.set_cursor>

c00020e9 <put_char.put_other>:
c00020e9:	66 d1 e3             	shl    %bx
c00020ec:	65 67 88 07          	mov    %al,%gs:(%bx)
c00020f0:	65 67 c6 47 01 07    	movb   $0x7,%gs:0x1(%bx)
c00020f6:	66 d1 eb             	shr    %bx
c00020f9:	66 43                	inc    %bx
c00020fb:	66 81 fb d0 07       	cmp    $0x7d0,%bx
c0002100:	7c 62                	jl     c0002164 <put_char.set_cursor>
c0002102:	eb 2d                	jmp    c0002131 <put_char.flash_screen>

c0002104 <put_char.is_carriage_return>:
c0002104:	66 31 d2             	xor    %dx,%dx
c0002107:	66 89 d8             	mov    %bx,%ax
c000210a:	66 b9 50 00          	mov    $0x50,%cx
c000210e:	66 f7 f1             	div    %cx
c0002111:	66 29 d3             	sub    %dx,%bx
c0002114:	eb 4e                	jmp    c0002164 <put_char.set_cursor>

c0002116 <put_char.is_line_feed>:
c0002116:	66 31 d2             	xor    %dx,%dx
c0002119:	66 89 d8             	mov    %bx,%ax
c000211c:	66 b9 50 00          	mov    $0x50,%cx
c0002120:	66 f7 f1             	div    %cx
c0002123:	66 29 d3             	sub    %dx,%bx
c0002126:	66 83 c3 50          	add    $0x50,%bx
c000212a:	66 81 fb d0 07       	cmp    $0x7d0,%bx

c000212f <put_char.is_line_feed_end>:
c000212f:	7c 33                	jl     c0002164 <put_char.set_cursor>

c0002131 <put_char.flash_screen>:
c0002131:	bf 00 80 0b c0       	mov    $0xc00b8000,%edi
c0002136:	be a0 80 0b c0       	mov    $0xc00b80a0,%esi
c000213b:	b9 00 0f 00 00       	mov    $0xf00,%ecx
c0002140:	fc                   	cld    
c0002141:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0002143:	bb 00 0f 00 00       	mov    $0xf00,%ebx
c0002148:	b9 50 00 00 00       	mov    $0x50,%ecx
c000214d:	be 00 00 00 00       	mov    $0x0,%esi

c0002152 <put_char.clean_last_row>:
c0002152:	66 c7 84 73 00 80 0b 	movw   $0x720,-0x3ff48000(%ebx,%esi,2)
c0002159:	c0 20 07 
c000215c:	46                   	inc    %esi
c000215d:	e2 f3                	loop   c0002152 <put_char.clean_last_row>
c000215f:	bb 80 07 00 00       	mov    $0x780,%ebx

c0002164 <put_char.set_cursor>:
c0002164:	53                   	push   %ebx
c0002165:	e8 8a 00 00 00       	call   c00021f4 <set_cursor>
c000216a:	83 c4 04             	add    $0x4,%esp

c000216d <put_char.put_char_end>:
c000216d:	61                   	popa   
c000216e:	89 ec                	mov    %ebp,%esp
c0002170:	5d                   	pop    %ebp
c0002171:	c3                   	ret    

c0002172 <put_str>:
c0002172:	55                   	push   %ebp
c0002173:	89 e5                	mov    %esp,%ebp
c0002175:	60                   	pusha  
c0002176:	8b 75 08             	mov    0x8(%ebp),%esi
c0002179:	31 c0                	xor    %eax,%eax

c000217b <put_str.goon>:
c000217b:	8a 06                	mov    (%esi),%al
c000217d:	3c 00                	cmp    $0x0,%al
c000217f:	74 0c                	je     c000218d <put_str.str_end>
c0002181:	50                   	push   %eax
c0002182:	e8 09 ff ff ff       	call   c0002090 <put_char>
c0002187:	83 c4 04             	add    $0x4,%esp
c000218a:	46                   	inc    %esi
c000218b:	eb ee                	jmp    c000217b <put_str.goon>

c000218d <put_str.str_end>:
c000218d:	61                   	popa   
c000218e:	89 ec                	mov    %ebp,%esp
c0002190:	5d                   	pop    %ebp
c0002191:	c3                   	ret    

c0002192 <put_int>:
c0002192:	55                   	push   %ebp
c0002193:	89 e5                	mov    %esp,%ebp
c0002195:	60                   	pusha  
c0002196:	8b 45 08             	mov    0x8(%ebp),%eax
c0002199:	89 c2                	mov    %eax,%edx
c000219b:	bf 07 00 00 00       	mov    $0x7,%edi
c00021a0:	b9 08 00 00 00       	mov    $0x8,%ecx
c00021a5:	bb 90 60 00 c0       	mov    $0xc0006090,%ebx

c00021aa <put_int.int_print>:
c00021aa:	83 e2 0f             	and    $0xf,%edx
c00021ad:	80 fa 0a             	cmp    $0xa,%dl
c00021b0:	7d 05                	jge    c00021b7 <put_int.is_A2F>
c00021b2:	83 c2 30             	add    $0x30,%edx
c00021b5:	eb 06                	jmp    c00021bd <put_int.store>

c00021b7 <put_int.is_A2F>:
c00021b7:	83 ea 0a             	sub    $0xa,%edx
c00021ba:	83 c2 41             	add    $0x41,%edx

c00021bd <put_int.store>:
c00021bd:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
c00021c0:	4f                   	dec    %edi
c00021c1:	c1 e8 04             	shr    $0x4,%eax
c00021c4:	89 c2                	mov    %eax,%edx
c00021c6:	e2 e2                	loop   c00021aa <put_int.int_print>
c00021c8:	47                   	inc    %edi

c00021c9 <put_int.skip_prefix_zero>:
c00021c9:	83 ff 09             	cmp    $0x9,%edi
c00021cc:	7d 0b                	jge    c00021d9 <put_int.full_zero>

c00021ce <put_int.go_on_skip>:
c00021ce:	8a 04 3b             	mov    (%ebx,%edi,1),%al
c00021d1:	47                   	inc    %edi
c00021d2:	3c 30                	cmp    $0x30,%al
c00021d4:	74 f3                	je     c00021c9 <put_int.skip_prefix_zero>
c00021d6:	4f                   	dec    %edi
c00021d7:	eb 02                	jmp    c00021db <put_int.put_num>

c00021d9 <put_int.full_zero>:
c00021d9:	b1 30                	mov    $0x30,%cl

c00021db <put_int.put_num>:
c00021db:	50                   	push   %eax
c00021dc:	e8 af fe ff ff       	call   c0002090 <put_char>
c00021e1:	83 c4 04             	add    $0x4,%esp
c00021e4:	83 ff 07             	cmp    $0x7,%edi
c00021e7:	7d 06                	jge    c00021ef <put_int.int_end>
c00021e9:	47                   	inc    %edi
c00021ea:	8a 04 3b             	mov    (%ebx,%edi,1),%al
c00021ed:	eb ec                	jmp    c00021db <put_int.put_num>

c00021ef <put_int.int_end>:
c00021ef:	61                   	popa   
c00021f0:	89 ec                	mov    %ebp,%esp
c00021f2:	5d                   	pop    %ebp
c00021f3:	c3                   	ret    

c00021f4 <set_cursor>:
c00021f4:	55                   	push   %ebp
c00021f5:	89 e5                	mov    %esp,%ebp
c00021f7:	52                   	push   %edx
c00021f8:	50                   	push   %eax
c00021f9:	53                   	push   %ebx
c00021fa:	8b 5d 08             	mov    0x8(%ebp),%ebx
c00021fd:	66 ba d4 03          	mov    $0x3d4,%dx
c0002201:	b0 0e                	mov    $0xe,%al
c0002203:	ee                   	out    %al,(%dx)
c0002204:	66 ba d5 03          	mov    $0x3d5,%dx
c0002208:	88 f8                	mov    %bh,%al
c000220a:	ee                   	out    %al,(%dx)
c000220b:	66 ba d4 03          	mov    $0x3d4,%dx
c000220f:	b0 0f                	mov    $0xf,%al
c0002211:	ee                   	out    %al,(%dx)
c0002212:	66 ba d5 03          	mov    $0x3d5,%dx
c0002216:	88 d8                	mov    %bl,%al
c0002218:	ee                   	out    %al,(%dx)
c0002219:	5b                   	pop    %ebx
c000221a:	58                   	pop    %eax
c000221b:	5a                   	pop    %edx
c000221c:	89 ec                	mov    %ebp,%esp
c000221e:	5d                   	pop    %ebp
c000221f:	c3                   	ret    

c0002220 <panic_spin>:
c0002220:	55                   	push   %ebp
c0002221:	89 e5                	mov    %esp,%ebp
c0002223:	53                   	push   %ebx
c0002224:	83 ec 04             	sub    $0x4,%esp
c0002227:	e8 9a f3 ff ff       	call   c00015c6 <__x86.get_pc_thunk.bx>
c000222c:	81 c3 d4 3d 00 00    	add    $0x3dd4,%ebx
c0002232:	e8 3e f8 ff ff       	call   c0001a75 <intr_disable>
c0002237:	83 ec 0c             	sub    $0xc,%esp
c000223a:	8d 83 23 e3 ff ff    	lea    -0x1cdd(%ebx),%eax
c0002240:	50                   	push   %eax
c0002241:	e8 2c ff ff ff       	call   c0002172 <put_str>
c0002246:	83 c4 10             	add    $0x10,%esp
c0002249:	83 ec 0c             	sub    $0xc,%esp
c000224c:	ff 75 08             	push   0x8(%ebp)
c000224f:	e8 1e ff ff ff       	call   c0002172 <put_str>
c0002254:	83 c4 10             	add    $0x10,%esp
c0002257:	83 ec 0c             	sub    $0xc,%esp
c000225a:	6a 0a                	push   $0xa
c000225c:	e8 2f fe ff ff       	call   c0002090 <put_char>
c0002261:	83 c4 10             	add    $0x10,%esp
c0002264:	83 ec 0c             	sub    $0xc,%esp
c0002267:	8d 83 2d e3 ff ff    	lea    -0x1cd3(%ebx),%eax
c000226d:	50                   	push   %eax
c000226e:	e8 ff fe ff ff       	call   c0002172 <put_str>
c0002273:	83 c4 10             	add    $0x10,%esp
c0002276:	8b 45 0c             	mov    0xc(%ebp),%eax
c0002279:	83 ec 0c             	sub    $0xc,%esp
c000227c:	50                   	push   %eax
c000227d:	e8 10 ff ff ff       	call   c0002192 <put_int>
c0002282:	83 c4 10             	add    $0x10,%esp
c0002285:	83 ec 0c             	sub    $0xc,%esp
c0002288:	6a 0a                	push   $0xa
c000228a:	e8 01 fe ff ff       	call   c0002090 <put_char>
c000228f:	83 c4 10             	add    $0x10,%esp
c0002292:	83 ec 0c             	sub    $0xc,%esp
c0002295:	8d 83 35 e3 ff ff    	lea    -0x1ccb(%ebx),%eax
c000229b:	50                   	push   %eax
c000229c:	e8 d1 fe ff ff       	call   c0002172 <put_str>
c00022a1:	83 c4 10             	add    $0x10,%esp
c00022a4:	83 ec 0c             	sub    $0xc,%esp
c00022a7:	ff 75 10             	push   0x10(%ebp)
c00022aa:	e8 c3 fe ff ff       	call   c0002172 <put_str>
c00022af:	83 c4 10             	add    $0x10,%esp
c00022b2:	83 ec 0c             	sub    $0xc,%esp
c00022b5:	6a 0a                	push   $0xa
c00022b7:	e8 d4 fd ff ff       	call   c0002090 <put_char>
c00022bc:	83 c4 10             	add    $0x10,%esp
c00022bf:	83 ec 0c             	sub    $0xc,%esp
c00022c2:	8d 83 3b e3 ff ff    	lea    -0x1cc5(%ebx),%eax
c00022c8:	50                   	push   %eax
c00022c9:	e8 a4 fe ff ff       	call   c0002172 <put_str>
c00022ce:	83 c4 10             	add    $0x10,%esp
c00022d1:	83 ec 0c             	sub    $0xc,%esp
c00022d4:	ff 75 14             	push   0x14(%ebp)
c00022d7:	e8 96 fe ff ff       	call   c0002172 <put_str>
c00022dc:	83 c4 10             	add    $0x10,%esp
c00022df:	83 ec 0c             	sub    $0xc,%esp
c00022e2:	6a 0a                	push   $0xa
c00022e4:	e8 a7 fd ff ff       	call   c0002090 <put_char>
c00022e9:	83 c4 10             	add    $0x10,%esp
c00022ec:	eb fe                	jmp    c00022ec <panic_spin+0xcc>

c00022ee <memset>:
c00022ee:	55                   	push   %ebp
c00022ef:	89 e5                	mov    %esp,%ebp
c00022f1:	53                   	push   %ebx
c00022f2:	83 ec 24             	sub    $0x24,%esp
c00022f5:	e8 f9 f7 ff ff       	call   c0001af3 <__x86.get_pc_thunk.ax>
c00022fa:	05 06 3d 00 00       	add    $0x3d06,%eax
c00022ff:	8b 55 0c             	mov    0xc(%ebp),%edx
c0002302:	88 55 e4             	mov    %dl,-0x1c(%ebp)
c0002305:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c0002309:	75 21                	jne    c000232c <memset+0x3e>
c000230b:	8d 90 48 e3 ff ff    	lea    -0x1cb8(%eax),%edx
c0002311:	52                   	push   %edx
c0002312:	8d 90 cc e3 ff ff    	lea    -0x1c34(%eax),%edx
c0002318:	52                   	push   %edx
c0002319:	6a 07                	push   $0x7
c000231b:	8d 90 54 e3 ff ff    	lea    -0x1cac(%eax),%edx
c0002321:	52                   	push   %edx
c0002322:	89 c3                	mov    %eax,%ebx
c0002324:	e8 f7 fe ff ff       	call   c0002220 <panic_spin>
c0002329:	83 c4 10             	add    $0x10,%esp
c000232c:	8b 45 08             	mov    0x8(%ebp),%eax
c000232f:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0002332:	eb 0f                	jmp    c0002343 <memset+0x55>
c0002334:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0002337:	8d 50 01             	lea    0x1(%eax),%edx
c000233a:	89 55 f4             	mov    %edx,-0xc(%ebp)
c000233d:	0f b6 55 e4          	movzbl -0x1c(%ebp),%edx
c0002341:	88 10                	mov    %dl,(%eax)
c0002343:	8b 45 10             	mov    0x10(%ebp),%eax
c0002346:	8d 50 ff             	lea    -0x1(%eax),%edx
c0002349:	89 55 10             	mov    %edx,0x10(%ebp)
c000234c:	85 c0                	test   %eax,%eax
c000234e:	75 e4                	jne    c0002334 <memset+0x46>
c0002350:	90                   	nop
c0002351:	90                   	nop
c0002352:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0002355:	c9                   	leave  
c0002356:	c3                   	ret    

c0002357 <memcpy>:
c0002357:	55                   	push   %ebp
c0002358:	89 e5                	mov    %esp,%ebp
c000235a:	53                   	push   %ebx
c000235b:	83 ec 14             	sub    $0x14,%esp
c000235e:	e8 90 f7 ff ff       	call   c0001af3 <__x86.get_pc_thunk.ax>
c0002363:	05 9d 3c 00 00       	add    $0x3c9d,%eax
c0002368:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c000236c:	74 06                	je     c0002374 <memcpy+0x1d>
c000236e:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c0002372:	75 21                	jne    c0002395 <memcpy+0x3e>
c0002374:	8d 90 5d e3 ff ff    	lea    -0x1ca3(%eax),%edx
c000237a:	52                   	push   %edx
c000237b:	8d 90 d4 e3 ff ff    	lea    -0x1c2c(%eax),%edx
c0002381:	52                   	push   %edx
c0002382:	6a 12                	push   $0x12
c0002384:	8d 90 54 e3 ff ff    	lea    -0x1cac(%eax),%edx
c000238a:	52                   	push   %edx
c000238b:	89 c3                	mov    %eax,%ebx
c000238d:	e8 8e fe ff ff       	call   c0002220 <panic_spin>
c0002392:	83 c4 10             	add    $0x10,%esp
c0002395:	8b 45 08             	mov    0x8(%ebp),%eax
c0002398:	89 45 f4             	mov    %eax,-0xc(%ebp)
c000239b:	8b 45 0c             	mov    0xc(%ebp),%eax
c000239e:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00023a1:	eb 17                	jmp    c00023ba <memcpy+0x63>
c00023a3:	8b 55 f0             	mov    -0x10(%ebp),%edx
c00023a6:	8d 42 01             	lea    0x1(%edx),%eax
c00023a9:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00023ac:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00023af:	8d 48 01             	lea    0x1(%eax),%ecx
c00023b2:	89 4d f4             	mov    %ecx,-0xc(%ebp)
c00023b5:	0f b6 12             	movzbl (%edx),%edx
c00023b8:	88 10                	mov    %dl,(%eax)
c00023ba:	8b 45 10             	mov    0x10(%ebp),%eax
c00023bd:	8d 50 ff             	lea    -0x1(%eax),%edx
c00023c0:	89 55 10             	mov    %edx,0x10(%ebp)
c00023c3:	85 c0                	test   %eax,%eax
c00023c5:	75 dc                	jne    c00023a3 <memcpy+0x4c>
c00023c7:	90                   	nop
c00023c8:	90                   	nop
c00023c9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00023cc:	c9                   	leave  
c00023cd:	c3                   	ret    

c00023ce <memcmp>:
c00023ce:	55                   	push   %ebp
c00023cf:	89 e5                	mov    %esp,%ebp
c00023d1:	53                   	push   %ebx
c00023d2:	83 ec 14             	sub    $0x14,%esp
c00023d5:	e8 19 f7 ff ff       	call   c0001af3 <__x86.get_pc_thunk.ax>
c00023da:	05 26 3c 00 00       	add    $0x3c26,%eax
c00023df:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c00023e3:	74 06                	je     c00023eb <memcmp+0x1d>
c00023e5:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c00023e9:	75 21                	jne    c000240c <memcmp+0x3e>
c00023eb:	8d 90 77 e3 ff ff    	lea    -0x1c89(%eax),%edx
c00023f1:	52                   	push   %edx
c00023f2:	8d 90 dc e3 ff ff    	lea    -0x1c24(%eax),%edx
c00023f8:	52                   	push   %edx
c00023f9:	6a 1e                	push   $0x1e
c00023fb:	8d 90 54 e3 ff ff    	lea    -0x1cac(%eax),%edx
c0002401:	52                   	push   %edx
c0002402:	89 c3                	mov    %eax,%ebx
c0002404:	e8 17 fe ff ff       	call   c0002220 <panic_spin>
c0002409:	83 c4 10             	add    $0x10,%esp
c000240c:	8b 45 08             	mov    0x8(%ebp),%eax
c000240f:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0002412:	8b 45 0c             	mov    0xc(%ebp),%eax
c0002415:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0002418:	eb 36                	jmp    c0002450 <memcmp+0x82>
c000241a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000241d:	0f b6 10             	movzbl (%eax),%edx
c0002420:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0002423:	0f b6 00             	movzbl (%eax),%eax
c0002426:	38 c2                	cmp    %al,%dl
c0002428:	74 1e                	je     c0002448 <memcmp+0x7a>
c000242a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000242d:	0f b6 10             	movzbl (%eax),%edx
c0002430:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0002433:	0f b6 00             	movzbl (%eax),%eax
c0002436:	38 c2                	cmp    %al,%dl
c0002438:	76 07                	jbe    c0002441 <memcmp+0x73>
c000243a:	b8 01 00 00 00       	mov    $0x1,%eax
c000243f:	eb 21                	jmp    c0002462 <memcmp+0x94>
c0002441:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0002446:	eb 1a                	jmp    c0002462 <memcmp+0x94>
c0002448:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c000244c:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0002450:	8b 45 10             	mov    0x10(%ebp),%eax
c0002453:	8d 50 ff             	lea    -0x1(%eax),%edx
c0002456:	89 55 10             	mov    %edx,0x10(%ebp)
c0002459:	85 c0                	test   %eax,%eax
c000245b:	75 bd                	jne    c000241a <memcmp+0x4c>
c000245d:	b8 00 00 00 00       	mov    $0x0,%eax
c0002462:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0002465:	c9                   	leave  
c0002466:	c3                   	ret    

c0002467 <strcpy>:
c0002467:	55                   	push   %ebp
c0002468:	89 e5                	mov    %esp,%ebp
c000246a:	53                   	push   %ebx
c000246b:	83 ec 14             	sub    $0x14,%esp
c000246e:	e8 80 f6 ff ff       	call   c0001af3 <__x86.get_pc_thunk.ax>
c0002473:	05 8d 3b 00 00       	add    $0x3b8d,%eax
c0002478:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c000247c:	74 06                	je     c0002484 <strcpy+0x1d>
c000247e:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c0002482:	75 21                	jne    c00024a5 <strcpy+0x3e>
c0002484:	8d 90 8a e3 ff ff    	lea    -0x1c76(%eax),%edx
c000248a:	52                   	push   %edx
c000248b:	8d 90 e4 e3 ff ff    	lea    -0x1c1c(%eax),%edx
c0002491:	52                   	push   %edx
c0002492:	6a 2f                	push   $0x2f
c0002494:	8d 90 54 e3 ff ff    	lea    -0x1cac(%eax),%edx
c000249a:	52                   	push   %edx
c000249b:	89 c3                	mov    %eax,%ebx
c000249d:	e8 7e fd ff ff       	call   c0002220 <panic_spin>
c00024a2:	83 c4 10             	add    $0x10,%esp
c00024a5:	8b 45 08             	mov    0x8(%ebp),%eax
c00024a8:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00024ab:	8b 45 0c             	mov    0xc(%ebp),%eax
c00024ae:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00024b1:	90                   	nop
c00024b2:	8b 55 f0             	mov    -0x10(%ebp),%edx
c00024b5:	8d 42 01             	lea    0x1(%edx),%eax
c00024b8:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00024bb:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00024be:	8d 48 01             	lea    0x1(%eax),%ecx
c00024c1:	89 4d f4             	mov    %ecx,-0xc(%ebp)
c00024c4:	0f b6 12             	movzbl (%edx),%edx
c00024c7:	88 10                	mov    %dl,(%eax)
c00024c9:	0f b6 00             	movzbl (%eax),%eax
c00024cc:	84 c0                	test   %al,%al
c00024ce:	75 e2                	jne    c00024b2 <strcpy+0x4b>
c00024d0:	8b 45 08             	mov    0x8(%ebp),%eax
c00024d3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00024d6:	c9                   	leave  
c00024d7:	c3                   	ret    

c00024d8 <strlen>:
c00024d8:	55                   	push   %ebp
c00024d9:	89 e5                	mov    %esp,%ebp
c00024db:	53                   	push   %ebx
c00024dc:	83 ec 14             	sub    $0x14,%esp
c00024df:	e8 0f f6 ff ff       	call   c0001af3 <__x86.get_pc_thunk.ax>
c00024e4:	05 1c 3b 00 00       	add    $0x3b1c,%eax
c00024e9:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c00024ed:	75 21                	jne    c0002510 <strlen+0x38>
c00024ef:	8d 90 a4 e3 ff ff    	lea    -0x1c5c(%eax),%edx
c00024f5:	52                   	push   %edx
c00024f6:	8d 90 ec e3 ff ff    	lea    -0x1c14(%eax),%edx
c00024fc:	52                   	push   %edx
c00024fd:	6a 38                	push   $0x38
c00024ff:	8d 90 54 e3 ff ff    	lea    -0x1cac(%eax),%edx
c0002505:	52                   	push   %edx
c0002506:	89 c3                	mov    %eax,%ebx
c0002508:	e8 13 fd ff ff       	call   c0002220 <panic_spin>
c000250d:	83 c4 10             	add    $0x10,%esp
c0002510:	8b 45 08             	mov    0x8(%ebp),%eax
c0002513:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0002516:	90                   	nop
c0002517:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000251a:	8d 50 01             	lea    0x1(%eax),%edx
c000251d:	89 55 f4             	mov    %edx,-0xc(%ebp)
c0002520:	0f b6 00             	movzbl (%eax),%eax
c0002523:	84 c0                	test   %al,%al
c0002525:	75 f0                	jne    c0002517 <strlen+0x3f>
c0002527:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000252a:	2b 45 08             	sub    0x8(%ebp),%eax
c000252d:	83 e8 01             	sub    $0x1,%eax
c0002530:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0002533:	c9                   	leave  
c0002534:	c3                   	ret    

c0002535 <strcmp>:
c0002535:	55                   	push   %ebp
c0002536:	89 e5                	mov    %esp,%ebp
c0002538:	53                   	push   %ebx
c0002539:	83 ec 14             	sub    $0x14,%esp
c000253c:	e8 b2 f5 ff ff       	call   c0001af3 <__x86.get_pc_thunk.ax>
c0002541:	05 bf 3a 00 00       	add    $0x3abf,%eax
c0002546:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c000254a:	74 06                	je     c0002552 <strcmp+0x1d>
c000254c:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c0002550:	75 21                	jne    c0002573 <strcmp+0x3e>
c0002552:	8d 90 b0 e3 ff ff    	lea    -0x1c50(%eax),%edx
c0002558:	52                   	push   %edx
c0002559:	8d 90 f4 e3 ff ff    	lea    -0x1c0c(%eax),%edx
c000255f:	52                   	push   %edx
c0002560:	6a 40                	push   $0x40
c0002562:	8d 90 54 e3 ff ff    	lea    -0x1cac(%eax),%edx
c0002568:	52                   	push   %edx
c0002569:	89 c3                	mov    %eax,%ebx
c000256b:	e8 b0 fc ff ff       	call   c0002220 <panic_spin>
c0002570:	83 c4 10             	add    $0x10,%esp
c0002573:	8b 45 08             	mov    0x8(%ebp),%eax
c0002576:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0002579:	8b 45 0c             	mov    0xc(%ebp),%eax
c000257c:	89 45 f0             	mov    %eax,-0x10(%ebp)
c000257f:	eb 36                	jmp    c00025b7 <strcmp+0x82>
c0002581:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0002584:	0f b6 10             	movzbl (%eax),%edx
c0002587:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000258a:	0f b6 00             	movzbl (%eax),%eax
c000258d:	38 c2                	cmp    %al,%dl
c000258f:	74 1e                	je     c00025af <strcmp+0x7a>
c0002591:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0002594:	0f b6 10             	movzbl (%eax),%edx
c0002597:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000259a:	0f b6 00             	movzbl (%eax),%eax
c000259d:	38 c2                	cmp    %al,%dl
c000259f:	76 07                	jbe    c00025a8 <strcmp+0x73>
c00025a1:	b8 01 00 00 00       	mov    $0x1,%eax
c00025a6:	eb 28                	jmp    c00025d0 <strcmp+0x9b>
c00025a8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c00025ad:	eb 21                	jmp    c00025d0 <strcmp+0x9b>
c00025af:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c00025b3:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c00025b7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00025ba:	0f b6 00             	movzbl (%eax),%eax
c00025bd:	84 c0                	test   %al,%al
c00025bf:	74 0a                	je     c00025cb <strcmp+0x96>
c00025c1:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00025c4:	0f b6 00             	movzbl (%eax),%eax
c00025c7:	84 c0                	test   %al,%al
c00025c9:	75 b6                	jne    c0002581 <strcmp+0x4c>
c00025cb:	b8 00 00 00 00       	mov    $0x0,%eax
c00025d0:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00025d3:	c9                   	leave  
c00025d4:	c3                   	ret    

c00025d5 <strchr>:
c00025d5:	55                   	push   %ebp
c00025d6:	89 e5                	mov    %esp,%ebp
c00025d8:	53                   	push   %ebx
c00025d9:	83 ec 24             	sub    $0x24,%esp
c00025dc:	e8 12 f5 ff ff       	call   c0001af3 <__x86.get_pc_thunk.ax>
c00025e1:	05 1f 3a 00 00       	add    $0x3a1f,%eax
c00025e6:	8b 55 0c             	mov    0xc(%ebp),%edx
c00025e9:	88 55 e4             	mov    %dl,-0x1c(%ebp)
c00025ec:	8b 55 08             	mov    0x8(%ebp),%edx
c00025ef:	0f b6 12             	movzbl (%edx),%edx
c00025f2:	84 d2                	test   %dl,%dl
c00025f4:	75 21                	jne    c0002617 <strchr+0x42>
c00025f6:	8d 90 c1 e3 ff ff    	lea    -0x1c3f(%eax),%edx
c00025fc:	52                   	push   %edx
c00025fd:	8d 90 fc e3 ff ff    	lea    -0x1c04(%eax),%edx
c0002603:	52                   	push   %edx
c0002604:	6a 51                	push   $0x51
c0002606:	8d 90 54 e3 ff ff    	lea    -0x1cac(%eax),%edx
c000260c:	52                   	push   %edx
c000260d:	89 c3                	mov    %eax,%ebx
c000260f:	e8 0c fc ff ff       	call   c0002220 <panic_spin>
c0002614:	83 c4 10             	add    $0x10,%esp
c0002617:	8b 45 08             	mov    0x8(%ebp),%eax
c000261a:	89 45 f4             	mov    %eax,-0xc(%ebp)
c000261d:	90                   	nop
c000261e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0002621:	0f b6 00             	movzbl (%eax),%eax
c0002624:	84 c0                	test   %al,%al
c0002626:	74 17                	je     c000263f <strchr+0x6a>
c0002628:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000262b:	8d 50 01             	lea    0x1(%eax),%edx
c000262e:	89 55 f4             	mov    %edx,-0xc(%ebp)
c0002631:	0f b6 00             	movzbl (%eax),%eax
c0002634:	0f b6 d0             	movzbl %al,%edx
c0002637:	0f be 45 e4          	movsbl -0x1c(%ebp),%eax
c000263b:	39 c2                	cmp    %eax,%edx
c000263d:	75 df                	jne    c000261e <strchr+0x49>
c000263f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0002642:	0f b6 00             	movzbl (%eax),%eax
c0002645:	84 c0                	test   %al,%al
c0002647:	75 07                	jne    c0002650 <strchr+0x7b>
c0002649:	b8 00 00 00 00       	mov    $0x0,%eax
c000264e:	eb 06                	jmp    c0002656 <strchr+0x81>
c0002650:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0002653:	83 e8 01             	sub    $0x1,%eax
c0002656:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0002659:	c9                   	leave  
c000265a:	c3                   	ret    

c000265b <strrchr>:
c000265b:	55                   	push   %ebp
c000265c:	89 e5                	mov    %esp,%ebp
c000265e:	53                   	push   %ebx
c000265f:	83 ec 24             	sub    $0x24,%esp
c0002662:	e8 8c f4 ff ff       	call   c0001af3 <__x86.get_pc_thunk.ax>
c0002667:	05 99 39 00 00       	add    $0x3999,%eax
c000266c:	8b 55 0c             	mov    0xc(%ebp),%edx
c000266f:	88 55 e4             	mov    %dl,-0x1c(%ebp)
c0002672:	8b 55 08             	mov    0x8(%ebp),%edx
c0002675:	0f b6 12             	movzbl (%edx),%edx
c0002678:	84 d2                	test   %dl,%dl
c000267a:	75 21                	jne    c000269d <strrchr+0x42>
c000267c:	8d 90 c1 e3 ff ff    	lea    -0x1c3f(%eax),%edx
c0002682:	52                   	push   %edx
c0002683:	8d 90 04 e4 ff ff    	lea    -0x1bfc(%eax),%edx
c0002689:	52                   	push   %edx
c000268a:	6a 5e                	push   $0x5e
c000268c:	8d 90 54 e3 ff ff    	lea    -0x1cac(%eax),%edx
c0002692:	52                   	push   %edx
c0002693:	89 c3                	mov    %eax,%ebx
c0002695:	e8 86 fb ff ff       	call   c0002220 <panic_spin>
c000269a:	83 c4 10             	add    $0x10,%esp
c000269d:	8b 45 08             	mov    0x8(%ebp),%eax
c00026a0:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00026a3:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c00026aa:	eb 15                	jmp    c00026c1 <strrchr+0x66>
c00026ac:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00026af:	0f b6 00             	movzbl (%eax),%eax
c00026b2:	38 45 e4             	cmp    %al,-0x1c(%ebp)
c00026b5:	75 06                	jne    c00026bd <strrchr+0x62>
c00026b7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00026ba:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00026bd:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c00026c1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00026c4:	0f b6 00             	movzbl (%eax),%eax
c00026c7:	84 c0                	test   %al,%al
c00026c9:	75 e1                	jne    c00026ac <strrchr+0x51>
c00026cb:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00026ce:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00026d1:	c9                   	leave  
c00026d2:	c3                   	ret    

c00026d3 <strcat>:
c00026d3:	55                   	push   %ebp
c00026d4:	89 e5                	mov    %esp,%ebp
c00026d6:	53                   	push   %ebx
c00026d7:	83 ec 14             	sub    $0x14,%esp
c00026da:	e8 14 f4 ff ff       	call   c0001af3 <__x86.get_pc_thunk.ax>
c00026df:	05 21 39 00 00       	add    $0x3921,%eax
c00026e4:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c00026e8:	74 06                	je     c00026f0 <strcat+0x1d>
c00026ea:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c00026ee:	75 21                	jne    c0002711 <strcat+0x3e>
c00026f0:	8d 90 8a e3 ff ff    	lea    -0x1c76(%eax),%edx
c00026f6:	52                   	push   %edx
c00026f7:	8d 90 0c e4 ff ff    	lea    -0x1bf4(%eax),%edx
c00026fd:	52                   	push   %edx
c00026fe:	6a 70                	push   $0x70
c0002700:	8d 90 54 e3 ff ff    	lea    -0x1cac(%eax),%edx
c0002706:	52                   	push   %edx
c0002707:	89 c3                	mov    %eax,%ebx
c0002709:	e8 12 fb ff ff       	call   c0002220 <panic_spin>
c000270e:	83 c4 10             	add    $0x10,%esp
c0002711:	8b 45 08             	mov    0x8(%ebp),%eax
c0002714:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0002717:	8b 45 0c             	mov    0xc(%ebp),%eax
c000271a:	89 45 f0             	mov    %eax,-0x10(%ebp)
c000271d:	90                   	nop
c000271e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0002721:	8d 50 01             	lea    0x1(%eax),%edx
c0002724:	89 55 f4             	mov    %edx,-0xc(%ebp)
c0002727:	0f b6 00             	movzbl (%eax),%eax
c000272a:	84 c0                	test   %al,%al
c000272c:	75 f0                	jne    c000271e <strcat+0x4b>
c000272e:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
c0002732:	90                   	nop
c0002733:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0002736:	8d 42 01             	lea    0x1(%edx),%eax
c0002739:	89 45 f0             	mov    %eax,-0x10(%ebp)
c000273c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000273f:	8d 48 01             	lea    0x1(%eax),%ecx
c0002742:	89 4d f4             	mov    %ecx,-0xc(%ebp)
c0002745:	0f b6 12             	movzbl (%edx),%edx
c0002748:	88 10                	mov    %dl,(%eax)
c000274a:	0f b6 00             	movzbl (%eax),%eax
c000274d:	84 c0                	test   %al,%al
c000274f:	75 e2                	jne    c0002733 <strcat+0x60>
c0002751:	8b 45 08             	mov    0x8(%ebp),%eax
c0002754:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0002757:	c9                   	leave  
c0002758:	c3                   	ret    

c0002759 <strchrs>:
c0002759:	55                   	push   %ebp
c000275a:	89 e5                	mov    %esp,%ebp
c000275c:	53                   	push   %ebx
c000275d:	83 ec 24             	sub    $0x24,%esp
c0002760:	e8 8e f3 ff ff       	call   c0001af3 <__x86.get_pc_thunk.ax>
c0002765:	05 9b 38 00 00       	add    $0x389b,%eax
c000276a:	8b 55 0c             	mov    0xc(%ebp),%edx
c000276d:	88 55 e4             	mov    %dl,-0x1c(%ebp)
c0002770:	8b 55 08             	mov    0x8(%ebp),%edx
c0002773:	0f b6 12             	movzbl (%edx),%edx
c0002776:	84 d2                	test   %dl,%dl
c0002778:	75 21                	jne    c000279b <strchrs+0x42>
c000277a:	8d 90 c1 e3 ff ff    	lea    -0x1c3f(%eax),%edx
c0002780:	52                   	push   %edx
c0002781:	8d 90 14 e4 ff ff    	lea    -0x1bec(%eax),%edx
c0002787:	52                   	push   %edx
c0002788:	6a 7c                	push   $0x7c
c000278a:	8d 90 54 e3 ff ff    	lea    -0x1cac(%eax),%edx
c0002790:	52                   	push   %edx
c0002791:	89 c3                	mov    %eax,%ebx
c0002793:	e8 88 fa ff ff       	call   c0002220 <panic_spin>
c0002798:	83 c4 10             	add    $0x10,%esp
c000279b:	8b 45 08             	mov    0x8(%ebp),%eax
c000279e:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00027a1:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c00027a8:	eb 13                	jmp    c00027bd <strchrs+0x64>
c00027aa:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00027ad:	0f b6 00             	movzbl (%eax),%eax
c00027b0:	38 45 e4             	cmp    %al,-0x1c(%ebp)
c00027b3:	75 04                	jne    c00027b9 <strchrs+0x60>
c00027b5:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c00027b9:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c00027bd:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00027c0:	0f b6 00             	movzbl (%eax),%eax
c00027c3:	84 c0                	test   %al,%al
c00027c5:	75 e3                	jne    c00027aa <strchrs+0x51>
c00027c7:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00027ca:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00027cd:	c9                   	leave  
c00027ce:	c3                   	ret    

c00027cf <get_vaddr>:
c00027cf:	55                   	push   %ebp
c00027d0:	89 e5                	mov    %esp,%ebp
c00027d2:	53                   	push   %ebx
c00027d3:	83 ec 14             	sub    $0x14,%esp
c00027d6:	e8 eb ed ff ff       	call   c00015c6 <__x86.get_pc_thunk.bx>
c00027db:	81 c3 25 38 00 00    	add    $0x3825,%ebx
c00027e1:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c00027e8:	c7 45 ec ff ff ff ff 	movl   $0xffffffff,-0x14(%ebp)
c00027ef:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
c00027f3:	75 6d                	jne    c0002862 <get_vaddr+0x93>
c00027f5:	83 ec 08             	sub    $0x8,%esp
c00027f8:	ff 75 0c             	push   0xc(%ebp)
c00027fb:	8d 83 ec 01 00 00    	lea    0x1ec(%ebx),%eax
c0002801:	50                   	push   %eax
c0002802:	e8 57 06 00 00       	call   c0002e5e <bitmap_scan>
c0002807:	83 c4 10             	add    $0x10,%esp
c000280a:	89 45 ec             	mov    %eax,-0x14(%ebp)
c000280d:	83 7d ec ff          	cmpl   $0xffffffff,-0x14(%ebp)
c0002811:	75 07                	jne    c000281a <get_vaddr+0x4b>
c0002813:	b8 00 00 00 00       	mov    $0x0,%eax
c0002818:	eb 48                	jmp    c0002862 <get_vaddr+0x93>
c000281a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0002821:	eb 21                	jmp    c0002844 <get_vaddr+0x75>
c0002823:	8b 55 ec             	mov    -0x14(%ebp),%edx
c0002826:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0002829:	01 d0                	add    %edx,%eax
c000282b:	83 ec 04             	sub    $0x4,%esp
c000282e:	6a 01                	push   $0x1
c0002830:	50                   	push   %eax
c0002831:	8d 83 ec 01 00 00    	lea    0x1ec(%ebx),%eax
c0002837:	50                   	push   %eax
c0002838:	e8 0f 07 00 00       	call   c0002f4c <set_bitmap>
c000283d:	83 c4 10             	add    $0x10,%esp
c0002840:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0002844:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0002847:	3b 45 0c             	cmp    0xc(%ebp),%eax
c000284a:	72 d7                	jb     c0002823 <get_vaddr+0x54>
c000284c:	8b 93 f4 01 00 00    	mov    0x1f4(%ebx),%edx
c0002852:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0002855:	c1 e0 0c             	shl    $0xc,%eax
c0002858:	01 d0                	add    %edx,%eax
c000285a:	89 45 f0             	mov    %eax,-0x10(%ebp)
c000285d:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0002860:	eb 00                	jmp    c0002862 <get_vaddr+0x93>
c0002862:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0002865:	c9                   	leave  
c0002866:	c3                   	ret    

c0002867 <get_pde_ptr>:
c0002867:	55                   	push   %ebp
c0002868:	89 e5                	mov    %esp,%ebp
c000286a:	83 ec 10             	sub    $0x10,%esp
c000286d:	e8 81 f2 ff ff       	call   c0001af3 <__x86.get_pc_thunk.ax>
c0002872:	05 8e 37 00 00       	add    $0x378e,%eax
c0002877:	8b 45 08             	mov    0x8(%ebp),%eax
c000287a:	c1 e8 16             	shr    $0x16,%eax
c000287d:	05 00 fc ff 3f       	add    $0x3ffffc00,%eax
c0002882:	c1 e0 02             	shl    $0x2,%eax
c0002885:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0002888:	8b 45 fc             	mov    -0x4(%ebp),%eax
c000288b:	c9                   	leave  
c000288c:	c3                   	ret    

c000288d <get_pte_ptr>:
c000288d:	55                   	push   %ebp
c000288e:	89 e5                	mov    %esp,%ebp
c0002890:	83 ec 10             	sub    $0x10,%esp
c0002893:	e8 5b f2 ff ff       	call   c0001af3 <__x86.get_pc_thunk.ax>
c0002898:	05 68 37 00 00       	add    $0x3768,%eax
c000289d:	8b 45 08             	mov    0x8(%ebp),%eax
c00028a0:	c1 e8 16             	shr    $0x16,%eax
c00028a3:	c1 e0 0c             	shl    $0xc,%eax
c00028a6:	89 c2                	mov    %eax,%edx
c00028a8:	8b 45 08             	mov    0x8(%ebp),%eax
c00028ab:	c1 e8 0c             	shr    $0xc,%eax
c00028ae:	25 ff 03 00 00       	and    $0x3ff,%eax
c00028b3:	c1 e0 02             	shl    $0x2,%eax
c00028b6:	01 d0                	add    %edx,%eax
c00028b8:	2d 00 00 40 00       	sub    $0x400000,%eax
c00028bd:	89 45 fc             	mov    %eax,-0x4(%ebp)
c00028c0:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00028c3:	c9                   	leave  
c00028c4:	c3                   	ret    

c00028c5 <palloc>:
c00028c5:	55                   	push   %ebp
c00028c6:	89 e5                	mov    %esp,%ebp
c00028c8:	53                   	push   %ebx
c00028c9:	83 ec 14             	sub    $0x14,%esp
c00028cc:	e8 f5 ec ff ff       	call   c00015c6 <__x86.get_pc_thunk.bx>
c00028d1:	81 c3 2f 37 00 00    	add    $0x372f,%ebx
c00028d7:	8b 45 08             	mov    0x8(%ebp),%eax
c00028da:	83 ec 08             	sub    $0x8,%esp
c00028dd:	6a 01                	push   $0x1
c00028df:	50                   	push   %eax
c00028e0:	e8 79 05 00 00       	call   c0002e5e <bitmap_scan>
c00028e5:	83 c4 10             	add    $0x10,%esp
c00028e8:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00028eb:	83 7d f4 ff          	cmpl   $0xffffffff,-0xc(%ebp)
c00028ef:	75 07                	jne    c00028f8 <palloc+0x33>
c00028f1:	b8 00 00 00 00       	mov    $0x0,%eax
c00028f6:	eb 2b                	jmp    c0002923 <palloc+0x5e>
c00028f8:	8b 55 f4             	mov    -0xc(%ebp),%edx
c00028fb:	8b 45 08             	mov    0x8(%ebp),%eax
c00028fe:	83 ec 04             	sub    $0x4,%esp
c0002901:	6a 01                	push   $0x1
c0002903:	52                   	push   %edx
c0002904:	50                   	push   %eax
c0002905:	e8 42 06 00 00       	call   c0002f4c <set_bitmap>
c000290a:	83 c4 10             	add    $0x10,%esp
c000290d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0002910:	c1 e0 0c             	shl    $0xc,%eax
c0002913:	89 c2                	mov    %eax,%edx
c0002915:	8b 45 08             	mov    0x8(%ebp),%eax
c0002918:	8b 40 08             	mov    0x8(%eax),%eax
c000291b:	01 d0                	add    %edx,%eax
c000291d:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0002920:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0002923:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0002926:	c9                   	leave  
c0002927:	c3                   	ret    

c0002928 <page_table_add>:
c0002928:	55                   	push   %ebp
c0002929:	89 e5                	mov    %esp,%ebp
c000292b:	53                   	push   %ebx
c000292c:	83 ec 24             	sub    $0x24,%esp
c000292f:	e8 92 ec ff ff       	call   c00015c6 <__x86.get_pc_thunk.bx>
c0002934:	81 c3 cc 36 00 00    	add    $0x36cc,%ebx
c000293a:	8b 45 08             	mov    0x8(%ebp),%eax
c000293d:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0002940:	8b 45 0c             	mov    0xc(%ebp),%eax
c0002943:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0002946:	ff 75 f4             	push   -0xc(%ebp)
c0002949:	e8 19 ff ff ff       	call   c0002867 <get_pde_ptr>
c000294e:	83 c4 04             	add    $0x4,%esp
c0002951:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0002954:	ff 75 f4             	push   -0xc(%ebp)
c0002957:	e8 31 ff ff ff       	call   c000288d <get_pte_ptr>
c000295c:	83 c4 04             	add    $0x4,%esp
c000295f:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0002962:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0002965:	8b 00                	mov    (%eax),%eax
c0002967:	83 e0 01             	and    $0x1,%eax
c000296a:	85 c0                	test   %eax,%eax
c000296c:	74 77                	je     c00029e5 <page_table_add+0xbd>
c000296e:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0002971:	8b 00                	mov    (%eax),%eax
c0002973:	83 e0 01             	and    $0x1,%eax
c0002976:	85 c0                	test   %eax,%eax
c0002978:	74 1f                	je     c0002999 <page_table_add+0x71>
c000297a:	8d 83 1c e4 ff ff    	lea    -0x1be4(%ebx),%eax
c0002980:	50                   	push   %eax
c0002981:	8d 83 f0 e4 ff ff    	lea    -0x1b10(%ebx),%eax
c0002987:	50                   	push   %eax
c0002988:	6a 62                	push   $0x62
c000298a:	8d 83 29 e4 ff ff    	lea    -0x1bd7(%ebx),%eax
c0002990:	50                   	push   %eax
c0002991:	e8 8a f8 ff ff       	call   c0002220 <panic_spin>
c0002996:	83 c4 10             	add    $0x10,%esp
c0002999:	8b 45 e8             	mov    -0x18(%ebp),%eax
c000299c:	8b 00                	mov    (%eax),%eax
c000299e:	83 e0 01             	and    $0x1,%eax
c00029a1:	85 c0                	test   %eax,%eax
c00029a3:	75 12                	jne    c00029b7 <page_table_add+0x8f>
c00029a5:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00029a8:	83 c8 07             	or     $0x7,%eax
c00029ab:	89 c2                	mov    %eax,%edx
c00029ad:	8b 45 e8             	mov    -0x18(%ebp),%eax
c00029b0:	89 10                	mov    %edx,(%eax)
c00029b2:	e9 a3 00 00 00       	jmp    c0002a5a <page_table_add+0x132>
c00029b7:	8d 83 32 e4 ff ff    	lea    -0x1bce(%ebx),%eax
c00029bd:	50                   	push   %eax
c00029be:	8d 83 f0 e4 ff ff    	lea    -0x1b10(%ebx),%eax
c00029c4:	50                   	push   %eax
c00029c5:	6a 6a                	push   $0x6a
c00029c7:	8d 83 29 e4 ff ff    	lea    -0x1bd7(%ebx),%eax
c00029cd:	50                   	push   %eax
c00029ce:	e8 4d f8 ff ff       	call   c0002220 <panic_spin>
c00029d3:	83 c4 10             	add    $0x10,%esp
c00029d6:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00029d9:	83 c8 07             	or     $0x7,%eax
c00029dc:	89 c2                	mov    %eax,%edx
c00029de:	8b 45 e8             	mov    -0x18(%ebp),%eax
c00029e1:	89 10                	mov    %edx,(%eax)
c00029e3:	eb 75                	jmp    c0002a5a <page_table_add+0x132>
c00029e5:	83 ec 0c             	sub    $0xc,%esp
c00029e8:	8d 83 dc 01 00 00    	lea    0x1dc(%ebx),%eax
c00029ee:	50                   	push   %eax
c00029ef:	e8 d1 fe ff ff       	call   c00028c5 <palloc>
c00029f4:	83 c4 10             	add    $0x10,%esp
c00029f7:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c00029fa:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00029fd:	83 c8 07             	or     $0x7,%eax
c0002a00:	89 c2                	mov    %eax,%edx
c0002a02:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0002a05:	89 10                	mov    %edx,(%eax)
c0002a07:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0002a0a:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0002a0f:	83 ec 04             	sub    $0x4,%esp
c0002a12:	68 00 10 00 00       	push   $0x1000
c0002a17:	6a 00                	push   $0x0
c0002a19:	50                   	push   %eax
c0002a1a:	e8 cf f8 ff ff       	call   c00022ee <memset>
c0002a1f:	83 c4 10             	add    $0x10,%esp
c0002a22:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0002a25:	8b 00                	mov    (%eax),%eax
c0002a27:	83 e0 01             	and    $0x1,%eax
c0002a2a:	85 c0                	test   %eax,%eax
c0002a2c:	74 1f                	je     c0002a4d <page_table_add+0x125>
c0002a2e:	8d 83 1c e4 ff ff    	lea    -0x1be4(%ebx),%eax
c0002a34:	50                   	push   %eax
c0002a35:	8d 83 f0 e4 ff ff    	lea    -0x1b10(%ebx),%eax
c0002a3b:	50                   	push   %eax
c0002a3c:	6a 77                	push   $0x77
c0002a3e:	8d 83 29 e4 ff ff    	lea    -0x1bd7(%ebx),%eax
c0002a44:	50                   	push   %eax
c0002a45:	e8 d6 f7 ff ff       	call   c0002220 <panic_spin>
c0002a4a:	83 c4 10             	add    $0x10,%esp
c0002a4d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0002a50:	83 c8 07             	or     $0x7,%eax
c0002a53:	89 c2                	mov    %eax,%edx
c0002a55:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0002a58:	89 10                	mov    %edx,(%eax)
c0002a5a:	90                   	nop
c0002a5b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0002a5e:	c9                   	leave  
c0002a5f:	c3                   	ret    

c0002a60 <malloc_page>:
c0002a60:	55                   	push   %ebp
c0002a61:	89 e5                	mov    %esp,%ebp
c0002a63:	53                   	push   %ebx
c0002a64:	83 ec 14             	sub    $0x14,%esp
c0002a67:	e8 5a eb ff ff       	call   c00015c6 <__x86.get_pc_thunk.bx>
c0002a6c:	81 c3 94 35 00 00    	add    $0x3594,%ebx
c0002a72:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c0002a76:	74 09                	je     c0002a81 <malloc_page+0x21>
c0002a78:	81 7d 0c ff 0e 00 00 	cmpl   $0xeff,0xc(%ebp)
c0002a7f:	76 22                	jbe    c0002aa3 <malloc_page+0x43>
c0002a81:	8d 83 3d e4 ff ff    	lea    -0x1bc3(%ebx),%eax
c0002a87:	50                   	push   %eax
c0002a88:	8d 83 00 e5 ff ff    	lea    -0x1b00(%ebx),%eax
c0002a8e:	50                   	push   %eax
c0002a8f:	68 82 00 00 00       	push   $0x82
c0002a94:	8d 83 29 e4 ff ff    	lea    -0x1bd7(%ebx),%eax
c0002a9a:	50                   	push   %eax
c0002a9b:	e8 80 f7 ff ff       	call   c0002220 <panic_spin>
c0002aa0:	83 c4 10             	add    $0x10,%esp
c0002aa3:	83 ec 08             	sub    $0x8,%esp
c0002aa6:	ff 75 0c             	push   0xc(%ebp)
c0002aa9:	ff 75 08             	push   0x8(%ebp)
c0002aac:	e8 1e fd ff ff       	call   c00027cf <get_vaddr>
c0002ab1:	83 c4 10             	add    $0x10,%esp
c0002ab4:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0002ab7:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c0002abb:	75 07                	jne    c0002ac4 <malloc_page+0x64>
c0002abd:	b8 00 00 00 00       	mov    $0x0,%eax
c0002ac2:	eb 65                	jmp    c0002b29 <malloc_page+0xc9>
c0002ac4:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0002ac7:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0002aca:	eb 4d                	jmp    c0002b19 <malloc_page+0xb9>
c0002acc:	8b 45 08             	mov    0x8(%ebp),%eax
c0002acf:	83 e0 01             	and    $0x1,%eax
c0002ad2:	85 c0                	test   %eax,%eax
c0002ad4:	74 08                	je     c0002ade <malloc_page+0x7e>
c0002ad6:	8d 83 dc 01 00 00    	lea    0x1dc(%ebx),%eax
c0002adc:	eb 06                	jmp    c0002ae4 <malloc_page+0x84>
c0002ade:	8d 83 cc 01 00 00    	lea    0x1cc(%ebx),%eax
c0002ae4:	83 ec 0c             	sub    $0xc,%esp
c0002ae7:	50                   	push   %eax
c0002ae8:	e8 d8 fd ff ff       	call   c00028c5 <palloc>
c0002aed:	83 c4 10             	add    $0x10,%esp
c0002af0:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0002af3:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c0002af7:	75 07                	jne    c0002b00 <malloc_page+0xa0>
c0002af9:	b8 00 00 00 00       	mov    $0x0,%eax
c0002afe:	eb 29                	jmp    c0002b29 <malloc_page+0xc9>
c0002b00:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0002b03:	83 ec 08             	sub    $0x8,%esp
c0002b06:	ff 75 ec             	push   -0x14(%ebp)
c0002b09:	50                   	push   %eax
c0002b0a:	e8 19 fe ff ff       	call   c0002928 <page_table_add>
c0002b0f:	83 c4 10             	add    $0x10,%esp
c0002b12:	81 45 f4 00 10 00 00 	addl   $0x1000,-0xc(%ebp)
c0002b19:	8b 45 0c             	mov    0xc(%ebp),%eax
c0002b1c:	8d 50 ff             	lea    -0x1(%eax),%edx
c0002b1f:	89 55 0c             	mov    %edx,0xc(%ebp)
c0002b22:	85 c0                	test   %eax,%eax
c0002b24:	75 a6                	jne    c0002acc <malloc_page+0x6c>
c0002b26:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0002b29:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0002b2c:	c9                   	leave  
c0002b2d:	c3                   	ret    

c0002b2e <get_kernel_page>:
c0002b2e:	55                   	push   %ebp
c0002b2f:	89 e5                	mov    %esp,%ebp
c0002b31:	53                   	push   %ebx
c0002b32:	83 ec 14             	sub    $0x14,%esp
c0002b35:	e8 8c ea ff ff       	call   c00015c6 <__x86.get_pc_thunk.bx>
c0002b3a:	81 c3 c6 34 00 00    	add    $0x34c6,%ebx
c0002b40:	83 ec 08             	sub    $0x8,%esp
c0002b43:	ff 75 08             	push   0x8(%ebp)
c0002b46:	6a 01                	push   $0x1
c0002b48:	e8 13 ff ff ff       	call   c0002a60 <malloc_page>
c0002b4d:	83 c4 10             	add    $0x10,%esp
c0002b50:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0002b53:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0002b57:	75 07                	jne    c0002b60 <get_kernel_page+0x32>
c0002b59:	b8 00 00 00 00       	mov    $0x0,%eax
c0002b5e:	eb 1a                	jmp    c0002b7a <get_kernel_page+0x4c>
c0002b60:	8b 45 08             	mov    0x8(%ebp),%eax
c0002b63:	c1 e0 0c             	shl    $0xc,%eax
c0002b66:	83 ec 04             	sub    $0x4,%esp
c0002b69:	50                   	push   %eax
c0002b6a:	6a 00                	push   $0x0
c0002b6c:	ff 75 f4             	push   -0xc(%ebp)
c0002b6f:	e8 7a f7 ff ff       	call   c00022ee <memset>
c0002b74:	83 c4 10             	add    $0x10,%esp
c0002b77:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0002b7a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0002b7d:	c9                   	leave  
c0002b7e:	c3                   	ret    

c0002b7f <init_mem_pool>:
c0002b7f:	55                   	push   %ebp
c0002b80:	89 e5                	mov    %esp,%ebp
c0002b82:	53                   	push   %ebx
c0002b83:	83 ec 34             	sub    $0x34,%esp
c0002b86:	e8 3b ea ff ff       	call   c00015c6 <__x86.get_pc_thunk.bx>
c0002b8b:	81 c3 75 34 00 00    	add    $0x3475,%ebx
c0002b91:	c7 45 f4 00 00 10 00 	movl   $0x100000,-0xc(%ebp)
c0002b98:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0002b9b:	05 00 00 10 00       	add    $0x100000,%eax
c0002ba0:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0002ba3:	8b 45 08             	mov    0x8(%ebp),%eax
c0002ba6:	2b 45 f0             	sub    -0x10(%ebp),%eax
c0002ba9:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0002bac:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0002baf:	c1 e8 0c             	shr    $0xc,%eax
c0002bb2:	66 89 45 ea          	mov    %ax,-0x16(%ebp)
c0002bb6:	0f b7 45 ea          	movzwl -0x16(%ebp),%eax
c0002bba:	66 d1 e8             	shr    %ax
c0002bbd:	66 89 45 e8          	mov    %ax,-0x18(%ebp)
c0002bc1:	0f b7 45 ea          	movzwl -0x16(%ebp),%eax
c0002bc5:	66 2b 45 e8          	sub    -0x18(%ebp),%ax
c0002bc9:	66 89 45 e6          	mov    %ax,-0x1a(%ebp)
c0002bcd:	0f b7 45 e8          	movzwl -0x18(%ebp),%eax
c0002bd1:	66 c1 e8 03          	shr    $0x3,%ax
c0002bd5:	0f b7 c0             	movzwl %ax,%eax
c0002bd8:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0002bdb:	0f b7 45 e6          	movzwl -0x1a(%ebp),%eax
c0002bdf:	66 c1 e8 03          	shr    $0x3,%ax
c0002be3:	0f b7 c0             	movzwl %ax,%eax
c0002be6:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0002be9:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0002bec:	89 45 d8             	mov    %eax,-0x28(%ebp)
c0002bef:	0f b7 45 e8          	movzwl -0x18(%ebp),%eax
c0002bf3:	c1 e0 0c             	shl    $0xc,%eax
c0002bf6:	89 c2                	mov    %eax,%edx
c0002bf8:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0002bfb:	01 d0                	add    %edx,%eax
c0002bfd:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0002c00:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0002c03:	89 83 e4 01 00 00    	mov    %eax,0x1e4(%ebx)
c0002c09:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0002c0c:	89 83 d4 01 00 00    	mov    %eax,0x1d4(%ebx)
c0002c12:	0f b7 45 e8          	movzwl -0x18(%ebp),%eax
c0002c16:	c1 e0 0c             	shl    $0xc,%eax
c0002c19:	89 83 e8 01 00 00    	mov    %eax,0x1e8(%ebx)
c0002c1f:	0f b7 45 e6          	movzwl -0x1a(%ebp),%eax
c0002c23:	c1 e0 0c             	shl    $0xc,%eax
c0002c26:	89 83 d8 01 00 00    	mov    %eax,0x1d8(%ebx)
c0002c2c:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0002c2f:	89 83 dc 01 00 00    	mov    %eax,0x1dc(%ebx)
c0002c35:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0002c38:	89 83 cc 01 00 00    	mov    %eax,0x1cc(%ebx)
c0002c3e:	c7 83 e0 01 00 00 00 	movl   $0xc009a000,0x1e0(%ebx)
c0002c45:	a0 09 c0 
c0002c48:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0002c4b:	2d 00 60 f6 3f       	sub    $0x3ff66000,%eax
c0002c50:	89 83 d0 01 00 00    	mov    %eax,0x1d0(%ebx)
c0002c56:	83 ec 0c             	sub    $0xc,%esp
c0002c59:	8d 83 53 e4 ff ff    	lea    -0x1bad(%ebx),%eax
c0002c5f:	50                   	push   %eax
c0002c60:	e8 0d f5 ff ff       	call   c0002172 <put_str>
c0002c65:	83 c4 10             	add    $0x10,%esp
c0002c68:	8b 83 e0 01 00 00    	mov    0x1e0(%ebx),%eax
c0002c6e:	83 ec 0c             	sub    $0xc,%esp
c0002c71:	50                   	push   %eax
c0002c72:	e8 1b f5 ff ff       	call   c0002192 <put_int>
c0002c77:	83 c4 10             	add    $0x10,%esp
c0002c7a:	83 ec 0c             	sub    $0xc,%esp
c0002c7d:	6a 0a                	push   $0xa
c0002c7f:	e8 0c f4 ff ff       	call   c0002090 <put_char>
c0002c84:	83 c4 10             	add    $0x10,%esp
c0002c87:	83 ec 0c             	sub    $0xc,%esp
c0002c8a:	8d 83 6d e4 ff ff    	lea    -0x1b93(%ebx),%eax
c0002c90:	50                   	push   %eax
c0002c91:	e8 dc f4 ff ff       	call   c0002172 <put_str>
c0002c96:	83 c4 10             	add    $0x10,%esp
c0002c99:	8b 83 e4 01 00 00    	mov    0x1e4(%ebx),%eax
c0002c9f:	83 ec 0c             	sub    $0xc,%esp
c0002ca2:	50                   	push   %eax
c0002ca3:	e8 ea f4 ff ff       	call   c0002192 <put_int>
c0002ca8:	83 c4 10             	add    $0x10,%esp
c0002cab:	83 ec 0c             	sub    $0xc,%esp
c0002cae:	6a 0a                	push   $0xa
c0002cb0:	e8 db f3 ff ff       	call   c0002090 <put_char>
c0002cb5:	83 c4 10             	add    $0x10,%esp
c0002cb8:	83 ec 0c             	sub    $0xc,%esp
c0002cbb:	8d 83 89 e4 ff ff    	lea    -0x1b77(%ebx),%eax
c0002cc1:	50                   	push   %eax
c0002cc2:	e8 ab f4 ff ff       	call   c0002172 <put_str>
c0002cc7:	83 c4 10             	add    $0x10,%esp
c0002cca:	8b 83 d0 01 00 00    	mov    0x1d0(%ebx),%eax
c0002cd0:	83 ec 0c             	sub    $0xc,%esp
c0002cd3:	50                   	push   %eax
c0002cd4:	e8 b9 f4 ff ff       	call   c0002192 <put_int>
c0002cd9:	83 c4 10             	add    $0x10,%esp
c0002cdc:	83 ec 0c             	sub    $0xc,%esp
c0002cdf:	6a 0a                	push   $0xa
c0002ce1:	e8 aa f3 ff ff       	call   c0002090 <put_char>
c0002ce6:	83 c4 10             	add    $0x10,%esp
c0002ce9:	83 ec 0c             	sub    $0xc,%esp
c0002cec:	8d 83 a1 e4 ff ff    	lea    -0x1b5f(%ebx),%eax
c0002cf2:	50                   	push   %eax
c0002cf3:	e8 7a f4 ff ff       	call   c0002172 <put_str>
c0002cf8:	83 c4 10             	add    $0x10,%esp
c0002cfb:	8b 83 d4 01 00 00    	mov    0x1d4(%ebx),%eax
c0002d01:	83 ec 0c             	sub    $0xc,%esp
c0002d04:	50                   	push   %eax
c0002d05:	e8 88 f4 ff ff       	call   c0002192 <put_int>
c0002d0a:	83 c4 10             	add    $0x10,%esp
c0002d0d:	83 ec 0c             	sub    $0xc,%esp
c0002d10:	6a 0a                	push   $0xa
c0002d12:	e8 79 f3 ff ff       	call   c0002090 <put_char>
c0002d17:	83 c4 10             	add    $0x10,%esp
c0002d1a:	83 ec 0c             	sub    $0xc,%esp
c0002d1d:	8d 83 dc 01 00 00    	lea    0x1dc(%ebx),%eax
c0002d23:	50                   	push   %eax
c0002d24:	e8 b9 00 00 00       	call   c0002de2 <init_bitmap>
c0002d29:	83 c4 10             	add    $0x10,%esp
c0002d2c:	83 ec 0c             	sub    $0xc,%esp
c0002d2f:	8d 83 cc 01 00 00    	lea    0x1cc(%ebx),%eax
c0002d35:	50                   	push   %eax
c0002d36:	e8 a7 00 00 00       	call   c0002de2 <init_bitmap>
c0002d3b:	83 c4 10             	add    $0x10,%esp
c0002d3e:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0002d41:	89 83 ec 01 00 00    	mov    %eax,0x1ec(%ebx)
c0002d47:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0002d4a:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0002d4d:	01 d0                	add    %edx,%eax
c0002d4f:	2d 00 60 f6 3f       	sub    $0x3ff66000,%eax
c0002d54:	89 83 f0 01 00 00    	mov    %eax,0x1f0(%ebx)
c0002d5a:	c7 83 f4 01 00 00 00 	movl   $0xc0100000,0x1f4(%ebx)
c0002d61:	00 10 c0 
c0002d64:	83 ec 0c             	sub    $0xc,%esp
c0002d67:	8d 83 ec 01 00 00    	lea    0x1ec(%ebx),%eax
c0002d6d:	50                   	push   %eax
c0002d6e:	e8 6f 00 00 00       	call   c0002de2 <init_bitmap>
c0002d73:	83 c4 10             	add    $0x10,%esp
c0002d76:	83 ec 0c             	sub    $0xc,%esp
c0002d79:	8d 83 bb e4 ff ff    	lea    -0x1b45(%ebx),%eax
c0002d7f:	50                   	push   %eax
c0002d80:	e8 ed f3 ff ff       	call   c0002172 <put_str>
c0002d85:	83 c4 10             	add    $0x10,%esp
c0002d88:	90                   	nop
c0002d89:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0002d8c:	c9                   	leave  
c0002d8d:	c3                   	ret    

c0002d8e <init_mem>:
c0002d8e:	55                   	push   %ebp
c0002d8f:	89 e5                	mov    %esp,%ebp
c0002d91:	53                   	push   %ebx
c0002d92:	83 ec 14             	sub    $0x14,%esp
c0002d95:	e8 2c e8 ff ff       	call   c00015c6 <__x86.get_pc_thunk.bx>
c0002d9a:	81 c3 66 32 00 00    	add    $0x3266,%ebx
c0002da0:	83 ec 0c             	sub    $0xc,%esp
c0002da3:	8d 83 ce e4 ff ff    	lea    -0x1b32(%ebx),%eax
c0002da9:	50                   	push   %eax
c0002daa:	e8 c3 f3 ff ff       	call   c0002172 <put_str>
c0002daf:	83 c4 10             	add    $0x10,%esp
c0002db2:	b8 00 0b 00 00       	mov    $0xb00,%eax
c0002db7:	8b 00                	mov    (%eax),%eax
c0002db9:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0002dbc:	83 ec 0c             	sub    $0xc,%esp
c0002dbf:	ff 75 f4             	push   -0xc(%ebp)
c0002dc2:	e8 b8 fd ff ff       	call   c0002b7f <init_mem_pool>
c0002dc7:	83 c4 10             	add    $0x10,%esp
c0002dca:	83 ec 0c             	sub    $0xc,%esp
c0002dcd:	8d 83 de e4 ff ff    	lea    -0x1b22(%ebx),%eax
c0002dd3:	50                   	push   %eax
c0002dd4:	e8 99 f3 ff ff       	call   c0002172 <put_str>
c0002dd9:	83 c4 10             	add    $0x10,%esp
c0002ddc:	90                   	nop
c0002ddd:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0002de0:	c9                   	leave  
c0002de1:	c3                   	ret    

c0002de2 <init_bitmap>:
c0002de2:	55                   	push   %ebp
c0002de3:	89 e5                	mov    %esp,%ebp
c0002de5:	53                   	push   %ebx
c0002de6:	83 ec 04             	sub    $0x4,%esp
c0002de9:	e8 05 ed ff ff       	call   c0001af3 <__x86.get_pc_thunk.ax>
c0002dee:	05 12 32 00 00       	add    $0x3212,%eax
c0002df3:	8b 55 08             	mov    0x8(%ebp),%edx
c0002df6:	8b 0a                	mov    (%edx),%ecx
c0002df8:	8b 55 08             	mov    0x8(%ebp),%edx
c0002dfb:	8b 52 04             	mov    0x4(%edx),%edx
c0002dfe:	83 ec 04             	sub    $0x4,%esp
c0002e01:	51                   	push   %ecx
c0002e02:	6a 00                	push   $0x0
c0002e04:	52                   	push   %edx
c0002e05:	89 c3                	mov    %eax,%ebx
c0002e07:	e8 e2 f4 ff ff       	call   c00022ee <memset>
c0002e0c:	83 c4 10             	add    $0x10,%esp
c0002e0f:	90                   	nop
c0002e10:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0002e13:	c9                   	leave  
c0002e14:	c3                   	ret    

c0002e15 <test_bitmap_scan>:
c0002e15:	55                   	push   %ebp
c0002e16:	89 e5                	mov    %esp,%ebp
c0002e18:	53                   	push   %ebx
c0002e19:	83 ec 10             	sub    $0x10,%esp
c0002e1c:	e8 d2 ec ff ff       	call   c0001af3 <__x86.get_pc_thunk.ax>
c0002e21:	05 df 31 00 00       	add    $0x31df,%eax
c0002e26:	8b 45 0c             	mov    0xc(%ebp),%eax
c0002e29:	c1 e8 03             	shr    $0x3,%eax
c0002e2c:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0002e2f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0002e32:	83 e0 07             	and    $0x7,%eax
c0002e35:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0002e38:	8b 45 08             	mov    0x8(%ebp),%eax
c0002e3b:	8b 50 04             	mov    0x4(%eax),%edx
c0002e3e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0002e41:	01 d0                	add    %edx,%eax
c0002e43:	0f b6 00             	movzbl (%eax),%eax
c0002e46:	0f b6 d0             	movzbl %al,%edx
c0002e49:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0002e4c:	bb 01 00 00 00       	mov    $0x1,%ebx
c0002e51:	89 c1                	mov    %eax,%ecx
c0002e53:	d3 e3                	shl    %cl,%ebx
c0002e55:	89 d8                	mov    %ebx,%eax
c0002e57:	21 d0                	and    %edx,%eax
c0002e59:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0002e5c:	c9                   	leave  
c0002e5d:	c3                   	ret    

c0002e5e <bitmap_scan>:
c0002e5e:	55                   	push   %ebp
c0002e5f:	89 e5                	mov    %esp,%ebp
c0002e61:	83 ec 20             	sub    $0x20,%esp
c0002e64:	e8 8a ec ff ff       	call   c0001af3 <__x86.get_pc_thunk.ax>
c0002e69:	05 97 31 00 00       	add    $0x3197,%eax
c0002e6e:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
c0002e75:	eb 04                	jmp    c0002e7b <bitmap_scan+0x1d>
c0002e77:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
c0002e7b:	8b 45 08             	mov    0x8(%ebp),%eax
c0002e7e:	8b 00                	mov    (%eax),%eax
c0002e80:	39 45 ec             	cmp    %eax,-0x14(%ebp)
c0002e83:	73 12                	jae    c0002e97 <bitmap_scan+0x39>
c0002e85:	8b 45 08             	mov    0x8(%ebp),%eax
c0002e88:	8b 50 04             	mov    0x4(%eax),%edx
c0002e8b:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0002e8e:	01 d0                	add    %edx,%eax
c0002e90:	0f b6 00             	movzbl (%eax),%eax
c0002e93:	3c ff                	cmp    $0xff,%al
c0002e95:	74 e0                	je     c0002e77 <bitmap_scan+0x19>
c0002e97:	8b 45 08             	mov    0x8(%ebp),%eax
c0002e9a:	8b 00                	mov    (%eax),%eax
c0002e9c:	39 45 ec             	cmp    %eax,-0x14(%ebp)
c0002e9f:	72 0a                	jb     c0002eab <bitmap_scan+0x4d>
c0002ea1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0002ea6:	e9 9f 00 00 00       	jmp    c0002f4a <bitmap_scan+0xec>
c0002eab:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c0002eb2:	eb 04                	jmp    c0002eb8 <bitmap_scan+0x5a>
c0002eb4:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0002eb8:	8b 45 08             	mov    0x8(%ebp),%eax
c0002ebb:	8b 50 04             	mov    0x4(%eax),%edx
c0002ebe:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0002ec1:	01 d0                	add    %edx,%eax
c0002ec3:	0f b6 00             	movzbl (%eax),%eax
c0002ec6:	0f b6 d0             	movzbl %al,%edx
c0002ec9:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0002ecc:	89 c1                	mov    %eax,%ecx
c0002ece:	d3 fa                	sar    %cl,%edx
c0002ed0:	89 d0                	mov    %edx,%eax
c0002ed2:	83 e0 01             	and    $0x1,%eax
c0002ed5:	85 c0                	test   %eax,%eax
c0002ed7:	75 db                	jne    c0002eb4 <bitmap_scan+0x56>
c0002ed9:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0002edc:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
c0002ee3:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0002ee6:	01 d0                	add    %edx,%eax
c0002ee8:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0002eeb:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0002eee:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0002ef1:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0002ef8:	c7 45 f4 ff ff ff ff 	movl   $0xffffffff,-0xc(%ebp)
c0002eff:	eb 39                	jmp    c0002f3a <bitmap_scan+0xdc>
c0002f01:	ff 75 f8             	push   -0x8(%ebp)
c0002f04:	ff 75 08             	push   0x8(%ebp)
c0002f07:	e8 09 ff ff ff       	call   c0002e15 <test_bitmap_scan>
c0002f0c:	83 c4 08             	add    $0x8,%esp
c0002f0f:	85 c0                	test   %eax,%eax
c0002f11:	75 06                	jne    c0002f19 <bitmap_scan+0xbb>
c0002f13:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c0002f17:	eb 07                	jmp    c0002f20 <bitmap_scan+0xc2>
c0002f19:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0002f20:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0002f23:	3b 45 0c             	cmp    0xc(%ebp),%eax
c0002f26:	75 0e                	jne    c0002f36 <bitmap_scan+0xd8>
c0002f28:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0002f2b:	2b 45 0c             	sub    0xc(%ebp),%eax
c0002f2e:	83 c0 01             	add    $0x1,%eax
c0002f31:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0002f34:	eb 11                	jmp    c0002f47 <bitmap_scan+0xe9>
c0002f36:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
c0002f3a:	8b 45 08             	mov    0x8(%ebp),%eax
c0002f3d:	8b 00                	mov    (%eax),%eax
c0002f3f:	c1 e0 03             	shl    $0x3,%eax
c0002f42:	39 45 f8             	cmp    %eax,-0x8(%ebp)
c0002f45:	72 ba                	jb     c0002f01 <bitmap_scan+0xa3>
c0002f47:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0002f4a:	c9                   	leave  
c0002f4b:	c3                   	ret    

c0002f4c <set_bitmap>:
c0002f4c:	55                   	push   %ebp
c0002f4d:	89 e5                	mov    %esp,%ebp
c0002f4f:	53                   	push   %ebx
c0002f50:	83 ec 24             	sub    $0x24,%esp
c0002f53:	e8 9b eb ff ff       	call   c0001af3 <__x86.get_pc_thunk.ax>
c0002f58:	05 a8 30 00 00       	add    $0x30a8,%eax
c0002f5d:	8b 55 10             	mov    0x10(%ebp),%edx
c0002f60:	88 55 e4             	mov    %dl,-0x1c(%ebp)
c0002f63:	80 7d e4 01          	cmpb   $0x1,-0x1c(%ebp)
c0002f67:	74 27                	je     c0002f90 <set_bitmap+0x44>
c0002f69:	80 7d e4 00          	cmpb   $0x0,-0x1c(%ebp)
c0002f6d:	74 21                	je     c0002f90 <set_bitmap+0x44>
c0002f6f:	8d 90 0c e5 ff ff    	lea    -0x1af4(%eax),%edx
c0002f75:	52                   	push   %edx
c0002f76:	8d 90 2c e5 ff ff    	lea    -0x1ad4(%eax),%edx
c0002f7c:	52                   	push   %edx
c0002f7d:	6a 43                	push   $0x43
c0002f7f:	8d 90 23 e5 ff ff    	lea    -0x1add(%eax),%edx
c0002f85:	52                   	push   %edx
c0002f86:	89 c3                	mov    %eax,%ebx
c0002f88:	e8 93 f2 ff ff       	call   c0002220 <panic_spin>
c0002f8d:	83 c4 10             	add    $0x10,%esp
c0002f90:	8b 45 0c             	mov    0xc(%ebp),%eax
c0002f93:	c1 e8 03             	shr    $0x3,%eax
c0002f96:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0002f99:	8b 45 0c             	mov    0xc(%ebp),%eax
c0002f9c:	83 e0 07             	and    $0x7,%eax
c0002f9f:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0002fa2:	80 7d e4 01          	cmpb   $0x1,-0x1c(%ebp)
c0002fa6:	75 32                	jne    c0002fda <set_bitmap+0x8e>
c0002fa8:	8b 45 08             	mov    0x8(%ebp),%eax
c0002fab:	8b 50 04             	mov    0x4(%eax),%edx
c0002fae:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0002fb1:	01 d0                	add    %edx,%eax
c0002fb3:	0f b6 00             	movzbl (%eax),%eax
c0002fb6:	89 c3                	mov    %eax,%ebx
c0002fb8:	0f be 55 e4          	movsbl -0x1c(%ebp),%edx
c0002fbc:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0002fbf:	89 c1                	mov    %eax,%ecx
c0002fc1:	d3 e2                	shl    %cl,%edx
c0002fc3:	89 d0                	mov    %edx,%eax
c0002fc5:	09 c3                	or     %eax,%ebx
c0002fc7:	89 d9                	mov    %ebx,%ecx
c0002fc9:	8b 45 08             	mov    0x8(%ebp),%eax
c0002fcc:	8b 50 04             	mov    0x4(%eax),%edx
c0002fcf:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0002fd2:	01 d0                	add    %edx,%eax
c0002fd4:	89 ca                	mov    %ecx,%edx
c0002fd6:	88 10                	mov    %dl,(%eax)
c0002fd8:	eb 30                	jmp    c000300a <set_bitmap+0xbe>
c0002fda:	8b 45 08             	mov    0x8(%ebp),%eax
c0002fdd:	8b 50 04             	mov    0x4(%eax),%edx
c0002fe0:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0002fe3:	01 d0                	add    %edx,%eax
c0002fe5:	0f b6 00             	movzbl (%eax),%eax
c0002fe8:	89 c3                	mov    %eax,%ebx
c0002fea:	0f be 55 e4          	movsbl -0x1c(%ebp),%edx
c0002fee:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0002ff1:	89 c1                	mov    %eax,%ecx
c0002ff3:	d3 e2                	shl    %cl,%edx
c0002ff5:	89 d0                	mov    %edx,%eax
c0002ff7:	89 d9                	mov    %ebx,%ecx
c0002ff9:	21 c1                	and    %eax,%ecx
c0002ffb:	8b 45 08             	mov    0x8(%ebp),%eax
c0002ffe:	8b 50 04             	mov    0x4(%eax),%edx
c0003001:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0003004:	01 d0                	add    %edx,%eax
c0003006:	89 ca                	mov    %ecx,%edx
c0003008:	88 10                	mov    %dl,(%eax)
c000300a:	90                   	nop
c000300b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c000300e:	c9                   	leave  
c000300f:	c3                   	ret    

c0003010 <running_thread>:
c0003010:	55                   	push   %ebp
c0003011:	89 e5                	mov    %esp,%ebp
c0003013:	83 ec 10             	sub    $0x10,%esp
c0003016:	e8 d8 ea ff ff       	call   c0001af3 <__x86.get_pc_thunk.ax>
c000301b:	05 e5 2f 00 00       	add    $0x2fe5,%eax
c0003020:	89 e0                	mov    %esp,%eax
c0003022:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0003025:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0003028:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c000302d:	c9                   	leave  
c000302e:	c3                   	ret    

c000302f <kernel_thread>:
c000302f:	55                   	push   %ebp
c0003030:	89 e5                	mov    %esp,%ebp
c0003032:	53                   	push   %ebx
c0003033:	83 ec 04             	sub    $0x4,%esp
c0003036:	e8 b8 ea ff ff       	call   c0001af3 <__x86.get_pc_thunk.ax>
c000303b:	05 c5 2f 00 00       	add    $0x2fc5,%eax
c0003040:	89 c3                	mov    %eax,%ebx
c0003042:	e8 fb e9 ff ff       	call   c0001a42 <intr_enable>
c0003047:	83 ec 0c             	sub    $0xc,%esp
c000304a:	ff 75 0c             	push   0xc(%ebp)
c000304d:	8b 45 08             	mov    0x8(%ebp),%eax
c0003050:	ff d0                	call   *%eax
c0003052:	83 c4 10             	add    $0x10,%esp
c0003055:	90                   	nop
c0003056:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0003059:	c9                   	leave  
c000305a:	c3                   	ret    

c000305b <thread_create>:
c000305b:	55                   	push   %ebp
c000305c:	89 e5                	mov    %esp,%ebp
c000305e:	83 ec 10             	sub    $0x10,%esp
c0003061:	e8 5b 04 00 00       	call   c00034c1 <__x86.get_pc_thunk.dx>
c0003066:	81 c2 9a 2f 00 00    	add    $0x2f9a,%edx
c000306c:	8b 45 08             	mov    0x8(%ebp),%eax
c000306f:	8b 00                	mov    (%eax),%eax
c0003071:	8d 88 d0 fe ff ff    	lea    -0x130(%eax),%ecx
c0003077:	8b 45 08             	mov    0x8(%ebp),%eax
c000307a:	89 08                	mov    %ecx,(%eax)
c000307c:	8b 45 08             	mov    0x8(%ebp),%eax
c000307f:	8b 00                	mov    (%eax),%eax
c0003081:	8d 48 80             	lea    -0x80(%eax),%ecx
c0003084:	8b 45 08             	mov    0x8(%ebp),%eax
c0003087:	89 08                	mov    %ecx,(%eax)
c0003089:	8b 45 08             	mov    0x8(%ebp),%eax
c000308c:	8b 00                	mov    (%eax),%eax
c000308e:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0003091:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0003094:	8d 92 2f d0 ff ff    	lea    -0x2fd1(%edx),%edx
c000309a:	89 50 10             	mov    %edx,0x10(%eax)
c000309d:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00030a0:	8b 55 0c             	mov    0xc(%ebp),%edx
c00030a3:	89 50 18             	mov    %edx,0x18(%eax)
c00030a6:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00030a9:	8b 55 10             	mov    0x10(%ebp),%edx
c00030ac:	89 50 1c             	mov    %edx,0x1c(%eax)
c00030af:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00030b2:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
c00030b9:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00030bc:	8b 50 08             	mov    0x8(%eax),%edx
c00030bf:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00030c2:	89 50 0c             	mov    %edx,0xc(%eax)
c00030c5:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00030c8:	8b 50 0c             	mov    0xc(%eax),%edx
c00030cb:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00030ce:	89 50 04             	mov    %edx,0x4(%eax)
c00030d1:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00030d4:	8b 50 04             	mov    0x4(%eax),%edx
c00030d7:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00030da:	89 10                	mov    %edx,(%eax)
c00030dc:	90                   	nop
c00030dd:	c9                   	leave  
c00030de:	c3                   	ret    

c00030df <init_thread>:
c00030df:	55                   	push   %ebp
c00030e0:	89 e5                	mov    %esp,%ebp
c00030e2:	53                   	push   %ebx
c00030e3:	83 ec 04             	sub    $0x4,%esp
c00030e6:	e8 db e4 ff ff       	call   c00015c6 <__x86.get_pc_thunk.bx>
c00030eb:	81 c3 15 2f 00 00    	add    $0x2f15,%ebx
c00030f1:	83 ec 04             	sub    $0x4,%esp
c00030f4:	6a 34                	push   $0x34
c00030f6:	6a 00                	push   $0x0
c00030f8:	ff 75 08             	push   0x8(%ebp)
c00030fb:	e8 ee f1 ff ff       	call   c00022ee <memset>
c0003100:	83 c4 10             	add    $0x10,%esp
c0003103:	8b 45 08             	mov    0x8(%ebp),%eax
c0003106:	83 c0 14             	add    $0x14,%eax
c0003109:	83 ec 08             	sub    $0x8,%esp
c000310c:	ff 75 0c             	push   0xc(%ebp)
c000310f:	50                   	push   %eax
c0003110:	e8 52 f3 ff ff       	call   c0002467 <strcpy>
c0003115:	83 c4 10             	add    $0x10,%esp
c0003118:	8b 83 f8 01 00 00    	mov    0x1f8(%ebx),%eax
c000311e:	39 45 08             	cmp    %eax,0x8(%ebp)
c0003121:	75 0c                	jne    c000312f <init_thread+0x50>
c0003123:	8b 45 08             	mov    0x8(%ebp),%eax
c0003126:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c000312d:	eb 0a                	jmp    c0003139 <init_thread+0x5a>
c000312f:	8b 45 08             	mov    0x8(%ebp),%eax
c0003132:	c7 40 04 01 00 00 00 	movl   $0x1,0x4(%eax)
c0003139:	8b 45 08             	mov    0x8(%ebp),%eax
c000313c:	05 00 10 00 00       	add    $0x1000,%eax
c0003141:	89 c2                	mov    %eax,%edx
c0003143:	8b 45 08             	mov    0x8(%ebp),%eax
c0003146:	89 10                	mov    %edx,(%eax)
c0003148:	8b 45 08             	mov    0x8(%ebp),%eax
c000314b:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0003152:	8b 55 10             	mov    0x10(%ebp),%edx
c0003155:	8b 45 08             	mov    0x8(%ebp),%eax
c0003158:	89 50 08             	mov    %edx,0x8(%eax)
c000315b:	8b 45 10             	mov    0x10(%ebp),%eax
c000315e:	89 c2                	mov    %eax,%edx
c0003160:	8b 45 08             	mov    0x8(%ebp),%eax
c0003163:	88 50 0c             	mov    %dl,0xc(%eax)
c0003166:	8b 45 08             	mov    0x8(%ebp),%eax
c0003169:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
c0003170:	8b 45 08             	mov    0x8(%ebp),%eax
c0003173:	c7 40 2c 00 00 00 00 	movl   $0x0,0x2c(%eax)
c000317a:	8b 45 08             	mov    0x8(%ebp),%eax
c000317d:	c7 40 30 13 09 22 20 	movl   $0x20220913,0x30(%eax)
c0003184:	90                   	nop
c0003185:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0003188:	c9                   	leave  
c0003189:	c3                   	ret    

c000318a <thread_start>:
c000318a:	55                   	push   %ebp
c000318b:	89 e5                	mov    %esp,%ebp
c000318d:	53                   	push   %ebx
c000318e:	83 ec 14             	sub    $0x14,%esp
c0003191:	e8 30 e4 ff ff       	call   c00015c6 <__x86.get_pc_thunk.bx>
c0003196:	81 c3 6a 2e 00 00    	add    $0x2e6a,%ebx
c000319c:	83 ec 0c             	sub    $0xc,%esp
c000319f:	6a 01                	push   $0x1
c00031a1:	e8 88 f9 ff ff       	call   c0002b2e <get_kernel_page>
c00031a6:	83 c4 10             	add    $0x10,%esp
c00031a9:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00031ac:	83 ec 04             	sub    $0x4,%esp
c00031af:	ff 75 0c             	push   0xc(%ebp)
c00031b2:	ff 75 08             	push   0x8(%ebp)
c00031b5:	ff 75 f4             	push   -0xc(%ebp)
c00031b8:	e8 22 ff ff ff       	call   c00030df <init_thread>
c00031bd:	83 c4 10             	add    $0x10,%esp
c00031c0:	83 ec 04             	sub    $0x4,%esp
c00031c3:	ff 75 14             	push   0x14(%ebp)
c00031c6:	ff 75 10             	push   0x10(%ebp)
c00031c9:	ff 75 f4             	push   -0xc(%ebp)
c00031cc:	e8 8a fe ff ff       	call   c000305b <thread_create>
c00031d1:	83 c4 10             	add    $0x10,%esp
c00031d4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00031d7:	83 c0 1c             	add    $0x1c,%eax
c00031da:	83 ec 08             	sub    $0x8,%esp
c00031dd:	50                   	push   %eax
c00031de:	8d 83 fc 01 00 00    	lea    0x1fc(%ebx),%eax
c00031e4:	50                   	push   %eax
c00031e5:	e8 2f 05 00 00       	call   c0003719 <elem_find>
c00031ea:	83 c4 10             	add    $0x10,%esp
c00031ed:	85 c0                	test   %eax,%eax
c00031ef:	74 1f                	je     c0003210 <thread_start+0x86>
c00031f1:	8d 83 38 e5 ff ff    	lea    -0x1ac8(%ebx),%eax
c00031f7:	50                   	push   %eax
c00031f8:	8d 83 80 e6 ff ff    	lea    -0x1980(%ebx),%eax
c00031fe:	50                   	push   %eax
c00031ff:	6a 4f                	push   $0x4f
c0003201:	8d 83 6c e5 ff ff    	lea    -0x1a94(%ebx),%eax
c0003207:	50                   	push   %eax
c0003208:	e8 13 f0 ff ff       	call   c0002220 <panic_spin>
c000320d:	83 c4 10             	add    $0x10,%esp
c0003210:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003213:	83 c0 1c             	add    $0x1c,%eax
c0003216:	83 ec 08             	sub    $0x8,%esp
c0003219:	50                   	push   %eax
c000321a:	8d 83 fc 01 00 00    	lea    0x1fc(%ebx),%eax
c0003220:	50                   	push   %eax
c0003221:	e8 57 03 00 00       	call   c000357d <list_append>
c0003226:	83 c4 10             	add    $0x10,%esp
c0003229:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000322c:	83 c0 24             	add    $0x24,%eax
c000322f:	83 ec 08             	sub    $0x8,%esp
c0003232:	50                   	push   %eax
c0003233:	8d 83 0c 02 00 00    	lea    0x20c(%ebx),%eax
c0003239:	50                   	push   %eax
c000323a:	e8 da 04 00 00       	call   c0003719 <elem_find>
c000323f:	83 c4 10             	add    $0x10,%esp
c0003242:	85 c0                	test   %eax,%eax
c0003244:	74 1f                	je     c0003265 <thread_start+0xdb>
c0003246:	8d 83 78 e5 ff ff    	lea    -0x1a88(%ebx),%eax
c000324c:	50                   	push   %eax
c000324d:	8d 83 80 e6 ff ff    	lea    -0x1980(%ebx),%eax
c0003253:	50                   	push   %eax
c0003254:	6a 55                	push   $0x55
c0003256:	8d 83 6c e5 ff ff    	lea    -0x1a94(%ebx),%eax
c000325c:	50                   	push   %eax
c000325d:	e8 be ef ff ff       	call   c0002220 <panic_spin>
c0003262:	83 c4 10             	add    $0x10,%esp
c0003265:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003268:	83 c0 24             	add    $0x24,%eax
c000326b:	83 ec 08             	sub    $0x8,%esp
c000326e:	50                   	push   %eax
c000326f:	8d 83 0c 02 00 00    	lea    0x20c(%ebx),%eax
c0003275:	50                   	push   %eax
c0003276:	e8 02 03 00 00       	call   c000357d <list_append>
c000327b:	83 c4 10             	add    $0x10,%esp
c000327e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003281:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0003284:	c9                   	leave  
c0003285:	c3                   	ret    

c0003286 <make_main_thread>:
c0003286:	55                   	push   %ebp
c0003287:	89 e5                	mov    %esp,%ebp
c0003289:	53                   	push   %ebx
c000328a:	83 ec 04             	sub    $0x4,%esp
c000328d:	e8 34 e3 ff ff       	call   c00015c6 <__x86.get_pc_thunk.bx>
c0003292:	81 c3 6e 2d 00 00    	add    $0x2d6e,%ebx
c0003298:	e8 73 fd ff ff       	call   c0003010 <running_thread>
c000329d:	89 83 f8 01 00 00    	mov    %eax,0x1f8(%ebx)
c00032a3:	8b 83 f8 01 00 00    	mov    0x1f8(%ebx),%eax
c00032a9:	83 ec 04             	sub    $0x4,%esp
c00032ac:	6a 1f                	push   $0x1f
c00032ae:	8d 93 ab e5 ff ff    	lea    -0x1a55(%ebx),%edx
c00032b4:	52                   	push   %edx
c00032b5:	50                   	push   %eax
c00032b6:	e8 24 fe ff ff       	call   c00030df <init_thread>
c00032bb:	83 c4 10             	add    $0x10,%esp
c00032be:	8b 83 f8 01 00 00    	mov    0x1f8(%ebx),%eax
c00032c4:	83 c0 24             	add    $0x24,%eax
c00032c7:	83 ec 08             	sub    $0x8,%esp
c00032ca:	50                   	push   %eax
c00032cb:	8d 83 0c 02 00 00    	lea    0x20c(%ebx),%eax
c00032d1:	50                   	push   %eax
c00032d2:	e8 42 04 00 00       	call   c0003719 <elem_find>
c00032d7:	83 c4 10             	add    $0x10,%esp
c00032da:	85 c0                	test   %eax,%eax
c00032dc:	74 1f                	je     c00032fd <make_main_thread+0x77>
c00032de:	8d 83 b0 e5 ff ff    	lea    -0x1a50(%ebx),%eax
c00032e4:	50                   	push   %eax
c00032e5:	8d 83 90 e6 ff ff    	lea    -0x1970(%ebx),%eax
c00032eb:	50                   	push   %eax
c00032ec:	6a 63                	push   $0x63
c00032ee:	8d 83 6c e5 ff ff    	lea    -0x1a94(%ebx),%eax
c00032f4:	50                   	push   %eax
c00032f5:	e8 26 ef ff ff       	call   c0002220 <panic_spin>
c00032fa:	83 c4 10             	add    $0x10,%esp
c00032fd:	8b 83 f8 01 00 00    	mov    0x1f8(%ebx),%eax
c0003303:	83 c0 24             	add    $0x24,%eax
c0003306:	83 ec 08             	sub    $0x8,%esp
c0003309:	50                   	push   %eax
c000330a:	8d 83 0c 02 00 00    	lea    0x20c(%ebx),%eax
c0003310:	50                   	push   %eax
c0003311:	e8 67 02 00 00       	call   c000357d <list_append>
c0003316:	83 c4 10             	add    $0x10,%esp
c0003319:	90                   	nop
c000331a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c000331d:	c9                   	leave  
c000331e:	c3                   	ret    

c000331f <schedule>:
c000331f:	55                   	push   %ebp
c0003320:	89 e5                	mov    %esp,%ebp
c0003322:	53                   	push   %ebx
c0003323:	83 ec 14             	sub    $0x14,%esp
c0003326:	e8 9b e2 ff ff       	call   c00015c6 <__x86.get_pc_thunk.bx>
c000332b:	81 c3 d5 2c 00 00    	add    $0x2cd5,%ebx
c0003331:	e8 72 e7 ff ff       	call   c0001aa8 <intr_get_status>
c0003336:	85 c0                	test   %eax,%eax
c0003338:	74 1f                	je     c0003359 <schedule+0x3a>
c000333a:	8d 83 e8 e5 ff ff    	lea    -0x1a18(%ebx),%eax
c0003340:	50                   	push   %eax
c0003341:	8d 83 a4 e6 ff ff    	lea    -0x195c(%ebx),%eax
c0003347:	50                   	push   %eax
c0003348:	6a 69                	push   $0x69
c000334a:	8d 83 6c e5 ff ff    	lea    -0x1a94(%ebx),%eax
c0003350:	50                   	push   %eax
c0003351:	e8 ca ee ff ff       	call   c0002220 <panic_spin>
c0003356:	83 c4 10             	add    $0x10,%esp
c0003359:	e8 b2 fc ff ff       	call   c0003010 <running_thread>
c000335e:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0003361:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003364:	8b 40 04             	mov    0x4(%eax),%eax
c0003367:	85 c0                	test   %eax,%eax
c0003369:	75 6d                	jne    c00033d8 <schedule+0xb9>
c000336b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000336e:	83 c0 1c             	add    $0x1c,%eax
c0003371:	83 ec 08             	sub    $0x8,%esp
c0003374:	50                   	push   %eax
c0003375:	8d 83 fc 01 00 00    	lea    0x1fc(%ebx),%eax
c000337b:	50                   	push   %eax
c000337c:	e8 98 03 00 00       	call   c0003719 <elem_find>
c0003381:	83 c4 10             	add    $0x10,%esp
c0003384:	85 c0                	test   %eax,%eax
c0003386:	74 1f                	je     c00033a7 <schedule+0x88>
c0003388:	8d 83 04 e6 ff ff    	lea    -0x19fc(%ebx),%eax
c000338e:	50                   	push   %eax
c000338f:	8d 83 a4 e6 ff ff    	lea    -0x195c(%ebx),%eax
c0003395:	50                   	push   %eax
c0003396:	6a 72                	push   $0x72
c0003398:	8d 83 6c e5 ff ff    	lea    -0x1a94(%ebx),%eax
c000339e:	50                   	push   %eax
c000339f:	e8 7c ee ff ff       	call   c0002220 <panic_spin>
c00033a4:	83 c4 10             	add    $0x10,%esp
c00033a7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00033aa:	83 c0 1c             	add    $0x1c,%eax
c00033ad:	83 ec 08             	sub    $0x8,%esp
c00033b0:	50                   	push   %eax
c00033b1:	8d 83 fc 01 00 00    	lea    0x1fc(%ebx),%eax
c00033b7:	50                   	push   %eax
c00033b8:	e8 c0 01 00 00       	call   c000357d <list_append>
c00033bd:	83 c4 10             	add    $0x10,%esp
c00033c0:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00033c3:	8b 40 08             	mov    0x8(%eax),%eax
c00033c6:	89 c2                	mov    %eax,%edx
c00033c8:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00033cb:	88 50 0c             	mov    %dl,0xc(%eax)
c00033ce:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00033d1:	c7 40 04 01 00 00 00 	movl   $0x1,0x4(%eax)
c00033d8:	83 ec 0c             	sub    $0xc,%esp
c00033db:	8d 83 fc 01 00 00    	lea    0x1fc(%ebx),%eax
c00033e1:	50                   	push   %eax
c00033e2:	e8 6c 02 00 00       	call   c0003653 <list_empty>
c00033e7:	83 c4 10             	add    $0x10,%esp
c00033ea:	85 c0                	test   %eax,%eax
c00033ec:	74 1f                	je     c000340d <schedule+0xee>
c00033ee:	8d 83 3c e6 ff ff    	lea    -0x19c4(%ebx),%eax
c00033f4:	50                   	push   %eax
c00033f5:	8d 83 a4 e6 ff ff    	lea    -0x195c(%ebx),%eax
c00033fb:	50                   	push   %eax
c00033fc:	6a 7e                	push   $0x7e
c00033fe:	8d 83 6c e5 ff ff    	lea    -0x1a94(%ebx),%eax
c0003404:	50                   	push   %eax
c0003405:	e8 16 ee ff ff       	call   c0002220 <panic_spin>
c000340a:	83 c4 10             	add    $0x10,%esp
c000340d:	c7 83 1c 02 00 00 00 	movl   $0x0,0x21c(%ebx)
c0003414:	00 00 00 
c0003417:	83 ec 0c             	sub    $0xc,%esp
c000341a:	8d 83 fc 01 00 00    	lea    0x1fc(%ebx),%eax
c0003420:	50                   	push   %eax
c0003421:	e8 c8 01 00 00       	call   c00035ee <list_pop>
c0003426:	83 c4 10             	add    $0x10,%esp
c0003429:	89 83 1c 02 00 00    	mov    %eax,0x21c(%ebx)
c000342f:	8b 83 1c 02 00 00    	mov    0x21c(%ebx),%eax
c0003435:	83 e8 1c             	sub    $0x1c,%eax
c0003438:	89 45 f0             	mov    %eax,-0x10(%ebp)
c000343b:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000343e:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0003445:	83 ec 08             	sub    $0x8,%esp
c0003448:	ff 75 f0             	push   -0x10(%ebp)
c000344b:	ff 75 f4             	push   -0xc(%ebp)
c000344e:	e8 0d 03 00 00       	call   c0003760 <switch_to>
c0003453:	83 c4 10             	add    $0x10,%esp
c0003456:	90                   	nop
c0003457:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c000345a:	c9                   	leave  
c000345b:	c3                   	ret    

c000345c <thread_init>:
c000345c:	55                   	push   %ebp
c000345d:	89 e5                	mov    %esp,%ebp
c000345f:	53                   	push   %ebx
c0003460:	83 ec 04             	sub    $0x4,%esp
c0003463:	e8 5e e1 ff ff       	call   c00015c6 <__x86.get_pc_thunk.bx>
c0003468:	81 c3 98 2b 00 00    	add    $0x2b98,%ebx
c000346e:	83 ec 0c             	sub    $0xc,%esp
c0003471:	8d 83 5c e6 ff ff    	lea    -0x19a4(%ebx),%eax
c0003477:	50                   	push   %eax
c0003478:	e8 f5 ec ff ff       	call   c0002172 <put_str>
c000347d:	83 c4 10             	add    $0x10,%esp
c0003480:	83 ec 0c             	sub    $0xc,%esp
c0003483:	8d 83 fc 01 00 00    	lea    0x1fc(%ebx),%eax
c0003489:	50                   	push   %eax
c000348a:	e8 36 00 00 00       	call   c00034c5 <list_init>
c000348f:	83 c4 10             	add    $0x10,%esp
c0003492:	83 ec 0c             	sub    $0xc,%esp
c0003495:	8d 83 0c 02 00 00    	lea    0x20c(%ebx),%eax
c000349b:	50                   	push   %eax
c000349c:	e8 24 00 00 00       	call   c00034c5 <list_init>
c00034a1:	83 c4 10             	add    $0x10,%esp
c00034a4:	e8 dd fd ff ff       	call   c0003286 <make_main_thread>
c00034a9:	83 ec 0c             	sub    $0xc,%esp
c00034ac:	8d 83 6f e6 ff ff    	lea    -0x1991(%ebx),%eax
c00034b2:	50                   	push   %eax
c00034b3:	e8 ba ec ff ff       	call   c0002172 <put_str>
c00034b8:	83 c4 10             	add    $0x10,%esp
c00034bb:	90                   	nop
c00034bc:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00034bf:	c9                   	leave  
c00034c0:	c3                   	ret    

c00034c1 <__x86.get_pc_thunk.dx>:
c00034c1:	8b 14 24             	mov    (%esp),%edx
c00034c4:	c3                   	ret    

c00034c5 <list_init>:
c00034c5:	55                   	push   %ebp
c00034c6:	89 e5                	mov    %esp,%ebp
c00034c8:	e8 26 e6 ff ff       	call   c0001af3 <__x86.get_pc_thunk.ax>
c00034cd:	05 33 2b 00 00       	add    $0x2b33,%eax
c00034d2:	8b 45 08             	mov    0x8(%ebp),%eax
c00034d5:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c00034db:	8b 45 08             	mov    0x8(%ebp),%eax
c00034de:	8d 50 08             	lea    0x8(%eax),%edx
c00034e1:	8b 45 08             	mov    0x8(%ebp),%eax
c00034e4:	89 50 04             	mov    %edx,0x4(%eax)
c00034e7:	8b 55 08             	mov    0x8(%ebp),%edx
c00034ea:	8b 45 08             	mov    0x8(%ebp),%eax
c00034ed:	89 50 08             	mov    %edx,0x8(%eax)
c00034f0:	8b 45 08             	mov    0x8(%ebp),%eax
c00034f3:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c00034fa:	90                   	nop
c00034fb:	5d                   	pop    %ebp
c00034fc:	c3                   	ret    

c00034fd <list_insert_before>:
c00034fd:	55                   	push   %ebp
c00034fe:	89 e5                	mov    %esp,%ebp
c0003500:	53                   	push   %ebx
c0003501:	83 ec 14             	sub    $0x14,%esp
c0003504:	e8 bd e0 ff ff       	call   c00015c6 <__x86.get_pc_thunk.bx>
c0003509:	81 c3 f7 2a 00 00    	add    $0x2af7,%ebx
c000350f:	e8 61 e5 ff ff       	call   c0001a75 <intr_disable>
c0003514:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0003517:	8b 45 08             	mov    0x8(%ebp),%eax
c000351a:	8b 00                	mov    (%eax),%eax
c000351c:	89 45 f4             	mov    %eax,-0xc(%ebp)
c000351f:	8b 45 08             	mov    0x8(%ebp),%eax
c0003522:	8b 55 0c             	mov    0xc(%ebp),%edx
c0003525:	89 10                	mov    %edx,(%eax)
c0003527:	8b 45 0c             	mov    0xc(%ebp),%eax
c000352a:	8b 55 08             	mov    0x8(%ebp),%edx
c000352d:	89 50 04             	mov    %edx,0x4(%eax)
c0003530:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003533:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0003536:	89 10                	mov    %edx,(%eax)
c0003538:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000353b:	8b 55 0c             	mov    0xc(%ebp),%edx
c000353e:	89 50 04             	mov    %edx,0x4(%eax)
c0003541:	83 ec 0c             	sub    $0xc,%esp
c0003544:	ff 75 f0             	push   -0x10(%ebp)
c0003547:	e8 83 e5 ff ff       	call   c0001acf <intr_set_status>
c000354c:	83 c4 10             	add    $0x10,%esp
c000354f:	90                   	nop
c0003550:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0003553:	c9                   	leave  
c0003554:	c3                   	ret    

c0003555 <list_push>:
c0003555:	55                   	push   %ebp
c0003556:	89 e5                	mov    %esp,%ebp
c0003558:	83 ec 08             	sub    $0x8,%esp
c000355b:	e8 93 e5 ff ff       	call   c0001af3 <__x86.get_pc_thunk.ax>
c0003560:	05 a0 2a 00 00       	add    $0x2aa0,%eax
c0003565:	8b 45 08             	mov    0x8(%ebp),%eax
c0003568:	8b 40 04             	mov    0x4(%eax),%eax
c000356b:	83 ec 08             	sub    $0x8,%esp
c000356e:	ff 75 0c             	push   0xc(%ebp)
c0003571:	50                   	push   %eax
c0003572:	e8 86 ff ff ff       	call   c00034fd <list_insert_before>
c0003577:	83 c4 10             	add    $0x10,%esp
c000357a:	90                   	nop
c000357b:	c9                   	leave  
c000357c:	c3                   	ret    

c000357d <list_append>:
c000357d:	55                   	push   %ebp
c000357e:	89 e5                	mov    %esp,%ebp
c0003580:	83 ec 08             	sub    $0x8,%esp
c0003583:	e8 6b e5 ff ff       	call   c0001af3 <__x86.get_pc_thunk.ax>
c0003588:	05 78 2a 00 00       	add    $0x2a78,%eax
c000358d:	8b 45 08             	mov    0x8(%ebp),%eax
c0003590:	83 c0 08             	add    $0x8,%eax
c0003593:	83 ec 08             	sub    $0x8,%esp
c0003596:	ff 75 0c             	push   0xc(%ebp)
c0003599:	50                   	push   %eax
c000359a:	e8 5e ff ff ff       	call   c00034fd <list_insert_before>
c000359f:	83 c4 10             	add    $0x10,%esp
c00035a2:	90                   	nop
c00035a3:	c9                   	leave  
c00035a4:	c3                   	ret    

c00035a5 <list_remove>:
c00035a5:	55                   	push   %ebp
c00035a6:	89 e5                	mov    %esp,%ebp
c00035a8:	53                   	push   %ebx
c00035a9:	83 ec 14             	sub    $0x14,%esp
c00035ac:	e8 15 e0 ff ff       	call   c00015c6 <__x86.get_pc_thunk.bx>
c00035b1:	81 c3 4f 2a 00 00    	add    $0x2a4f,%ebx
c00035b7:	e8 b9 e4 ff ff       	call   c0001a75 <intr_disable>
c00035bc:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00035bf:	8b 45 08             	mov    0x8(%ebp),%eax
c00035c2:	8b 00                	mov    (%eax),%eax
c00035c4:	8b 55 08             	mov    0x8(%ebp),%edx
c00035c7:	8b 52 04             	mov    0x4(%edx),%edx
c00035ca:	89 50 04             	mov    %edx,0x4(%eax)
c00035cd:	8b 45 08             	mov    0x8(%ebp),%eax
c00035d0:	8b 40 04             	mov    0x4(%eax),%eax
c00035d3:	8b 55 08             	mov    0x8(%ebp),%edx
c00035d6:	8b 12                	mov    (%edx),%edx
c00035d8:	89 10                	mov    %edx,(%eax)
c00035da:	83 ec 0c             	sub    $0xc,%esp
c00035dd:	ff 75 f4             	push   -0xc(%ebp)
c00035e0:	e8 ea e4 ff ff       	call   c0001acf <intr_set_status>
c00035e5:	83 c4 10             	add    $0x10,%esp
c00035e8:	90                   	nop
c00035e9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00035ec:	c9                   	leave  
c00035ed:	c3                   	ret    

c00035ee <list_pop>:
c00035ee:	55                   	push   %ebp
c00035ef:	89 e5                	mov    %esp,%ebp
c00035f1:	53                   	push   %ebx
c00035f2:	83 ec 14             	sub    $0x14,%esp
c00035f5:	e8 f9 e4 ff ff       	call   c0001af3 <__x86.get_pc_thunk.ax>
c00035fa:	05 06 2a 00 00       	add    $0x2a06,%eax
c00035ff:	8b 55 08             	mov    0x8(%ebp),%edx
c0003602:	8b 52 04             	mov    0x4(%edx),%edx
c0003605:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0003608:	83 c1 08             	add    $0x8,%ecx
c000360b:	39 ca                	cmp    %ecx,%edx
c000360d:	75 21                	jne    c0003630 <list_pop+0x42>
c000360f:	8d 90 b0 e6 ff ff    	lea    -0x1950(%eax),%edx
c0003615:	52                   	push   %edx
c0003616:	8d 90 d8 e6 ff ff    	lea    -0x1928(%eax),%edx
c000361c:	52                   	push   %edx
c000361d:	6a 36                	push   $0x36
c000361f:	8d 90 d1 e6 ff ff    	lea    -0x192f(%eax),%edx
c0003625:	52                   	push   %edx
c0003626:	89 c3                	mov    %eax,%ebx
c0003628:	e8 f3 eb ff ff       	call   c0002220 <panic_spin>
c000362d:	83 c4 10             	add    $0x10,%esp
c0003630:	8b 45 08             	mov    0x8(%ebp),%eax
c0003633:	8b 40 04             	mov    0x4(%eax),%eax
c0003636:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0003639:	8b 45 08             	mov    0x8(%ebp),%eax
c000363c:	8b 40 04             	mov    0x4(%eax),%eax
c000363f:	83 ec 0c             	sub    $0xc,%esp
c0003642:	50                   	push   %eax
c0003643:	e8 5d ff ff ff       	call   c00035a5 <list_remove>
c0003648:	83 c4 10             	add    $0x10,%esp
c000364b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000364e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0003651:	c9                   	leave  
c0003652:	c3                   	ret    

c0003653 <list_empty>:
c0003653:	55                   	push   %ebp
c0003654:	89 e5                	mov    %esp,%ebp
c0003656:	e8 98 e4 ff ff       	call   c0001af3 <__x86.get_pc_thunk.ax>
c000365b:	05 a5 29 00 00       	add    $0x29a5,%eax
c0003660:	8b 45 08             	mov    0x8(%ebp),%eax
c0003663:	8b 40 04             	mov    0x4(%eax),%eax
c0003666:	8b 55 08             	mov    0x8(%ebp),%edx
c0003669:	83 c2 08             	add    $0x8,%edx
c000366c:	39 d0                	cmp    %edx,%eax
c000366e:	0f 94 c0             	sete   %al
c0003671:	0f b6 c0             	movzbl %al,%eax
c0003674:	5d                   	pop    %ebp
c0003675:	c3                   	ret    

c0003676 <list_len>:
c0003676:	55                   	push   %ebp
c0003677:	89 e5                	mov    %esp,%ebp
c0003679:	83 ec 10             	sub    $0x10,%esp
c000367c:	e8 72 e4 ff ff       	call   c0001af3 <__x86.get_pc_thunk.ax>
c0003681:	05 7f 29 00 00       	add    $0x297f,%eax
c0003686:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c000368d:	8b 45 08             	mov    0x8(%ebp),%eax
c0003690:	8b 40 04             	mov    0x4(%eax),%eax
c0003693:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0003696:	eb 0d                	jmp    c00036a5 <list_len+0x2f>
c0003698:	8b 45 fc             	mov    -0x4(%ebp),%eax
c000369b:	8b 40 04             	mov    0x4(%eax),%eax
c000369e:	89 45 fc             	mov    %eax,-0x4(%ebp)
c00036a1:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
c00036a5:	8b 45 08             	mov    0x8(%ebp),%eax
c00036a8:	83 c0 08             	add    $0x8,%eax
c00036ab:	39 45 fc             	cmp    %eax,-0x4(%ebp)
c00036ae:	75 e8                	jne    c0003698 <list_len+0x22>
c00036b0:	8b 45 f8             	mov    -0x8(%ebp),%eax
c00036b3:	c9                   	leave  
c00036b4:	c3                   	ret    

c00036b5 <list_traversal>:
c00036b5:	55                   	push   %ebp
c00036b6:	89 e5                	mov    %esp,%ebp
c00036b8:	83 ec 18             	sub    $0x18,%esp
c00036bb:	e8 33 e4 ff ff       	call   c0001af3 <__x86.get_pc_thunk.ax>
c00036c0:	05 40 29 00 00       	add    $0x2940,%eax
c00036c5:	8b 45 08             	mov    0x8(%ebp),%eax
c00036c8:	8b 40 04             	mov    0x4(%eax),%eax
c00036cb:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00036ce:	ff 75 08             	push   0x8(%ebp)
c00036d1:	e8 7d ff ff ff       	call   c0003653 <list_empty>
c00036d6:	83 c4 04             	add    $0x4,%esp
c00036d9:	85 c0                	test   %eax,%eax
c00036db:	74 2a                	je     c0003707 <list_traversal+0x52>
c00036dd:	b8 00 00 00 00       	mov    $0x0,%eax
c00036e2:	eb 33                	jmp    c0003717 <list_traversal+0x62>
c00036e4:	83 ec 08             	sub    $0x8,%esp
c00036e7:	ff 75 10             	push   0x10(%ebp)
c00036ea:	ff 75 f4             	push   -0xc(%ebp)
c00036ed:	8b 45 0c             	mov    0xc(%ebp),%eax
c00036f0:	ff d0                	call   *%eax
c00036f2:	83 c4 10             	add    $0x10,%esp
c00036f5:	85 c0                	test   %eax,%eax
c00036f7:	74 05                	je     c00036fe <list_traversal+0x49>
c00036f9:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00036fc:	eb 19                	jmp    c0003717 <list_traversal+0x62>
c00036fe:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003701:	8b 40 04             	mov    0x4(%eax),%eax
c0003704:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0003707:	8b 45 08             	mov    0x8(%ebp),%eax
c000370a:	83 c0 08             	add    $0x8,%eax
c000370d:	39 45 f4             	cmp    %eax,-0xc(%ebp)
c0003710:	75 d2                	jne    c00036e4 <list_traversal+0x2f>
c0003712:	b8 00 00 00 00       	mov    $0x0,%eax
c0003717:	c9                   	leave  
c0003718:	c3                   	ret    

c0003719 <elem_find>:
c0003719:	55                   	push   %ebp
c000371a:	89 e5                	mov    %esp,%ebp
c000371c:	83 ec 10             	sub    $0x10,%esp
c000371f:	e8 cf e3 ff ff       	call   c0001af3 <__x86.get_pc_thunk.ax>
c0003724:	05 dc 28 00 00       	add    $0x28dc,%eax
c0003729:	8b 45 08             	mov    0x8(%ebp),%eax
c000372c:	8b 40 04             	mov    0x4(%eax),%eax
c000372f:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0003732:	eb 18                	jmp    c000374c <elem_find+0x33>
c0003734:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0003737:	3b 45 0c             	cmp    0xc(%ebp),%eax
c000373a:	75 07                	jne    c0003743 <elem_find+0x2a>
c000373c:	b8 01 00 00 00       	mov    $0x1,%eax
c0003741:	eb 19                	jmp    c000375c <elem_find+0x43>
c0003743:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0003746:	8b 40 04             	mov    0x4(%eax),%eax
c0003749:	89 45 fc             	mov    %eax,-0x4(%ebp)
c000374c:	8b 45 08             	mov    0x8(%ebp),%eax
c000374f:	83 c0 08             	add    $0x8,%eax
c0003752:	39 45 fc             	cmp    %eax,-0x4(%ebp)
c0003755:	75 dd                	jne    c0003734 <elem_find+0x1b>
c0003757:	b8 00 00 00 00       	mov    $0x0,%eax
c000375c:	c9                   	leave  
c000375d:	c3                   	ret    
c000375e:	66 90                	xchg   %ax,%ax

c0003760 <switch_to>:
c0003760:	56                   	push   %esi
c0003761:	57                   	push   %edi
c0003762:	53                   	push   %ebx
c0003763:	55                   	push   %ebp
c0003764:	8b 44 24 14          	mov    0x14(%esp),%eax
c0003768:	89 20                	mov    %esp,(%eax)
c000376a:	8b 44 24 18          	mov    0x18(%esp),%eax
c000376e:	8b 20                	mov    (%eax),%esp
c0003770:	5d                   	pop    %ebp
c0003771:	5b                   	pop    %ebx
c0003772:	5f                   	pop    %edi
c0003773:	5e                   	pop    %esi
c0003774:	c3                   	ret    
