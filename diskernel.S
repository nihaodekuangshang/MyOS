
../build/kernel.bin:     file format elf32-i386


Disassembly of section .text:

c0001500 <k_thread_a>:
c0001500:	55                   	push   %ebp
c0001501:	89 e5                	mov    %esp,%ebp
c0001503:	53                   	push   %ebx
c0001504:	83 ec 14             	sub    $0x14,%esp
c0001507:	e8 dc 00 00 00       	call   c00015e8 <__x86.get_pc_thunk.bx>
c000150c:	81 c3 f4 4a 00 00    	add    $0x4af4,%ebx
c0001512:	8b 45 08             	mov    0x8(%ebp),%eax
c0001515:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0001518:	83 ec 0c             	sub    $0xc,%esp
c000151b:	ff 75 f4             	push   -0xc(%ebp)
c000151e:	e8 6f 0c 00 00       	call   c0002192 <put_str>
c0001523:	83 c4 10             	add    $0x10,%esp
c0001526:	83 ec 0c             	sub    $0xc,%esp
c0001529:	6a 0a                	push   $0xa
c000152b:	e8 80 0b 00 00       	call   c00020b0 <put_char>
c0001530:	83 c4 10             	add    $0x10,%esp
c0001533:	eb e3                	jmp    c0001518 <k_thread_a+0x18>

c0001535 <k_thread_b>:
c0001535:	55                   	push   %ebp
c0001536:	89 e5                	mov    %esp,%ebp
c0001538:	53                   	push   %ebx
c0001539:	83 ec 14             	sub    $0x14,%esp
c000153c:	e8 a7 00 00 00       	call   c00015e8 <__x86.get_pc_thunk.bx>
c0001541:	81 c3 bf 4a 00 00    	add    $0x4abf,%ebx
c0001547:	8b 45 08             	mov    0x8(%ebp),%eax
c000154a:	89 45 f4             	mov    %eax,-0xc(%ebp)
c000154d:	83 ec 0c             	sub    $0xc,%esp
c0001550:	ff 75 f4             	push   -0xc(%ebp)
c0001553:	e8 3a 0c 00 00       	call   c0002192 <put_str>
c0001558:	83 c4 10             	add    $0x10,%esp
c000155b:	83 ec 0c             	sub    $0xc,%esp
c000155e:	6a 0a                	push   $0xa
c0001560:	e8 4b 0b 00 00       	call   c00020b0 <put_char>
c0001565:	83 c4 10             	add    $0x10,%esp
c0001568:	eb e3                	jmp    c000154d <k_thread_b+0x18>

c000156a <main>:
c000156a:	8d 4c 24 04          	lea    0x4(%esp),%ecx
c000156e:	83 e4 f0             	and    $0xfffffff0,%esp
c0001571:	ff 71 fc             	push   -0x4(%ecx)
c0001574:	55                   	push   %ebp
c0001575:	89 e5                	mov    %esp,%ebp
c0001577:	53                   	push   %ebx
c0001578:	51                   	push   %ecx
c0001579:	e8 6a 00 00 00       	call   c00015e8 <__x86.get_pc_thunk.bx>
c000157e:	81 c3 82 4a 00 00    	add    $0x4a82,%ebx
c0001584:	e8 63 00 00 00       	call   c00015ec <init_all>
c0001589:	8d 83 00 e0 ff ff    	lea    -0x2000(%ebx),%eax
c000158f:	50                   	push   %eax
c0001590:	8d 83 00 b5 ff ff    	lea    -0x4b00(%ebx),%eax
c0001596:	50                   	push   %eax
c0001597:	6a 1f                	push   $0x1f
c0001599:	8d 83 11 e0 ff ff    	lea    -0x1fef(%ebx),%eax
c000159f:	50                   	push   %eax
c00015a0:	e8 05 1c 00 00       	call   c00031aa <thread_start>
c00015a5:	83 c4 10             	add    $0x10,%esp
c00015a8:	8d 83 1c e0 ff ff    	lea    -0x1fe4(%ebx),%eax
c00015ae:	50                   	push   %eax
c00015af:	8d 83 00 b5 ff ff    	lea    -0x4b00(%ebx),%eax
c00015b5:	50                   	push   %eax
c00015b6:	6a 0b                	push   $0xb
c00015b8:	8d 83 2d e0 ff ff    	lea    -0x1fd3(%ebx),%eax
c00015be:	50                   	push   %eax
c00015bf:	e8 e6 1b 00 00       	call   c00031aa <thread_start>
c00015c4:	83 c4 10             	add    $0x10,%esp
c00015c7:	83 ec 0c             	sub    $0xc,%esp
c00015ca:	8d 83 38 e0 ff ff    	lea    -0x1fc8(%ebx),%eax
c00015d0:	50                   	push   %eax
c00015d1:	e8 bc 0b 00 00       	call   c0002192 <put_str>
c00015d6:	83 c4 10             	add    $0x10,%esp
c00015d9:	83 ec 0c             	sub    $0xc,%esp
c00015dc:	6a 0a                	push   $0xa
c00015de:	e8 cd 0a 00 00       	call   c00020b0 <put_char>
c00015e3:	83 c4 10             	add    $0x10,%esp
c00015e6:	eb df                	jmp    c00015c7 <main+0x5d>

c00015e8 <__x86.get_pc_thunk.bx>:
c00015e8:	8b 1c 24             	mov    (%esp),%ebx
c00015eb:	c3                   	ret    

c00015ec <init_all>:
c00015ec:	55                   	push   %ebp
c00015ed:	89 e5                	mov    %esp,%ebp
c00015ef:	53                   	push   %ebx
c00015f0:	83 ec 04             	sub    $0x4,%esp
c00015f3:	e8 f0 ff ff ff       	call   c00015e8 <__x86.get_pc_thunk.bx>
c00015f8:	81 c3 08 4a 00 00    	add    $0x4a08,%ebx
c00015fe:	e8 ca 03 00 00       	call   c00019cd <init_idt>
c0001603:	e8 62 06 00 00       	call   c0001c6a <init_time>
c0001608:	e8 a1 17 00 00       	call   c0002dae <init_mem>
c000160d:	e8 6a 1e 00 00       	call   c000347c <thread_init>
c0001612:	90                   	nop
c0001613:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0001616:	c9                   	leave  
c0001617:	c3                   	ret    

c0001618 <outb>:
c0001618:	55                   	push   %ebp
c0001619:	89 e5                	mov    %esp,%ebp
c000161b:	83 ec 08             	sub    $0x8,%esp
c000161e:	e8 f5 04 00 00       	call   c0001b18 <__x86.get_pc_thunk.ax>
c0001623:	05 dd 49 00 00       	add    $0x49dd,%eax
c0001628:	8b 45 08             	mov    0x8(%ebp),%eax
c000162b:	8b 55 0c             	mov    0xc(%ebp),%edx
c000162e:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0001632:	89 d0                	mov    %edx,%eax
c0001634:	88 45 f8             	mov    %al,-0x8(%ebp)
c0001637:	0f b6 45 f8          	movzbl -0x8(%ebp),%eax
c000163b:	0f b7 55 fc          	movzwl -0x4(%ebp),%edx
c000163f:	ee                   	out    %al,(%dx)
c0001640:	90                   	nop
c0001641:	c9                   	leave  
c0001642:	c3                   	ret    

c0001643 <init_pic>:
c0001643:	55                   	push   %ebp
c0001644:	89 e5                	mov    %esp,%ebp
c0001646:	e8 cd 04 00 00       	call   c0001b18 <__x86.get_pc_thunk.ax>
c000164b:	05 b5 49 00 00       	add    $0x49b5,%eax
c0001650:	6a 11                	push   $0x11
c0001652:	6a 20                	push   $0x20
c0001654:	e8 bf ff ff ff       	call   c0001618 <outb>
c0001659:	83 c4 08             	add    $0x8,%esp
c000165c:	6a 20                	push   $0x20
c000165e:	6a 21                	push   $0x21
c0001660:	e8 b3 ff ff ff       	call   c0001618 <outb>
c0001665:	83 c4 08             	add    $0x8,%esp
c0001668:	6a 04                	push   $0x4
c000166a:	6a 21                	push   $0x21
c000166c:	e8 a7 ff ff ff       	call   c0001618 <outb>
c0001671:	83 c4 08             	add    $0x8,%esp
c0001674:	6a 01                	push   $0x1
c0001676:	6a 21                	push   $0x21
c0001678:	e8 9b ff ff ff       	call   c0001618 <outb>
c000167d:	83 c4 08             	add    $0x8,%esp
c0001680:	6a 11                	push   $0x11
c0001682:	68 a0 00 00 00       	push   $0xa0
c0001687:	e8 8c ff ff ff       	call   c0001618 <outb>
c000168c:	83 c4 08             	add    $0x8,%esp
c000168f:	6a 28                	push   $0x28
c0001691:	68 a1 00 00 00       	push   $0xa1
c0001696:	e8 7d ff ff ff       	call   c0001618 <outb>
c000169b:	83 c4 08             	add    $0x8,%esp
c000169e:	6a 02                	push   $0x2
c00016a0:	68 a1 00 00 00       	push   $0xa1
c00016a5:	e8 6e ff ff ff       	call   c0001618 <outb>
c00016aa:	83 c4 08             	add    $0x8,%esp
c00016ad:	6a 01                	push   $0x1
c00016af:	68 a1 00 00 00       	push   $0xa1
c00016b4:	e8 5f ff ff ff       	call   c0001618 <outb>
c00016b9:	83 c4 08             	add    $0x8,%esp
c00016bc:	68 fe 00 00 00       	push   $0xfe
c00016c1:	6a 21                	push   $0x21
c00016c3:	e8 50 ff ff ff       	call   c0001618 <outb>
c00016c8:	83 c4 08             	add    $0x8,%esp
c00016cb:	68 ff 00 00 00       	push   $0xff
c00016d0:	68 a1 00 00 00       	push   $0xa1
c00016d5:	e8 3e ff ff ff       	call   c0001618 <outb>
c00016da:	83 c4 08             	add    $0x8,%esp
c00016dd:	90                   	nop
c00016de:	c9                   	leave  
c00016df:	c3                   	ret    

c00016e0 <make_idt_desc>:
c00016e0:	55                   	push   %ebp
c00016e1:	89 e5                	mov    %esp,%ebp
c00016e3:	83 ec 04             	sub    $0x4,%esp
c00016e6:	e8 2d 04 00 00       	call   c0001b18 <__x86.get_pc_thunk.ax>
c00016eb:	05 15 49 00 00       	add    $0x4915,%eax
c00016f0:	8b 45 0c             	mov    0xc(%ebp),%eax
c00016f3:	88 45 fc             	mov    %al,-0x4(%ebp)
c00016f6:	8b 45 10             	mov    0x10(%ebp),%eax
c00016f9:	c1 e8 10             	shr    $0x10,%eax
c00016fc:	89 c2                	mov    %eax,%edx
c00016fe:	8b 45 08             	mov    0x8(%ebp),%eax
c0001701:	66 89 50 06          	mov    %dx,0x6(%eax)
c0001705:	8b 45 08             	mov    0x8(%ebp),%eax
c0001708:	0f b6 55 fc          	movzbl -0x4(%ebp),%edx
c000170c:	88 50 05             	mov    %dl,0x5(%eax)
c000170f:	8b 45 08             	mov    0x8(%ebp),%eax
c0001712:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c0001716:	8b 45 08             	mov    0x8(%ebp),%eax
c0001719:	66 c7 40 02 08 00    	movw   $0x8,0x2(%eax)
c000171f:	8b 45 10             	mov    0x10(%ebp),%eax
c0001722:	89 c2                	mov    %eax,%edx
c0001724:	8b 45 08             	mov    0x8(%ebp),%eax
c0001727:	66 89 10             	mov    %dx,(%eax)
c000172a:	90                   	nop
c000172b:	c9                   	leave  
c000172c:	c3                   	ret    

c000172d <init_idt_desc>:
c000172d:	55                   	push   %ebp
c000172e:	89 e5                	mov    %esp,%ebp
c0001730:	53                   	push   %ebx
c0001731:	83 ec 10             	sub    $0x10,%esp
c0001734:	e8 af fe ff ff       	call   c00015e8 <__x86.get_pc_thunk.bx>
c0001739:	81 c3 c7 48 00 00    	add    $0x48c7,%ebx
c000173f:	c6 45 fb 00          	movb   $0x0,-0x5(%ebp)
c0001743:	eb 35                	jmp    c000177a <init_idt_desc+0x4d>
c0001745:	0f b6 55 fb          	movzbl -0x5(%ebp),%edx
c0001749:	c7 c0 0c 60 00 c0    	mov    $0xc000600c,%eax
c000174f:	8b 04 90             	mov    (%eax,%edx,4),%eax
c0001752:	8b 8b c4 01 00 00    	mov    0x1c4(%ebx),%ecx
c0001758:	0f b6 55 fb          	movzbl -0x5(%ebp),%edx
c000175c:	c1 e2 03             	shl    $0x3,%edx
c000175f:	01 ca                	add    %ecx,%edx
c0001761:	50                   	push   %eax
c0001762:	68 8e 00 00 00       	push   $0x8e
c0001767:	52                   	push   %edx
c0001768:	e8 73 ff ff ff       	call   c00016e0 <make_idt_desc>
c000176d:	83 c4 0c             	add    $0xc,%esp
c0001770:	0f b6 45 fb          	movzbl -0x5(%ebp),%eax
c0001774:	83 c0 01             	add    $0x1,%eax
c0001777:	88 45 fb             	mov    %al,-0x5(%ebp)
c000177a:	80 7d fb 20          	cmpb   $0x20,-0x5(%ebp)
c000177e:	76 c5                	jbe    c0001745 <init_idt_desc+0x18>
c0001780:	90                   	nop
c0001781:	90                   	nop
c0001782:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0001785:	c9                   	leave  
c0001786:	c3                   	ret    

c0001787 <general_intr_handler>:
c0001787:	55                   	push   %ebp
c0001788:	89 e5                	mov    %esp,%ebp
c000178a:	53                   	push   %ebx
c000178b:	83 ec 24             	sub    $0x24,%esp
c000178e:	e8 55 fe ff ff       	call   c00015e8 <__x86.get_pc_thunk.bx>
c0001793:	81 c3 6d 48 00 00    	add    $0x486d,%ebx
c0001799:	8b 45 08             	mov    0x8(%ebp),%eax
c000179c:	88 45 e4             	mov    %al,-0x1c(%ebp)
c000179f:	80 7d e4 27          	cmpb   $0x27,-0x1c(%ebp)
c00017a3:	0f 84 c8 00 00 00    	je     c0001871 <general_intr_handler+0xea>
c00017a9:	80 7d e4 2f          	cmpb   $0x2f,-0x1c(%ebp)
c00017ad:	0f 84 be 00 00 00    	je     c0001871 <general_intr_handler+0xea>
c00017b3:	83 ec 0c             	sub    $0xc,%esp
c00017b6:	6a 50                	push   $0x50
c00017b8:	e8 57 0a 00 00       	call   c0002214 <set_cursor>
c00017bd:	83 c4 10             	add    $0x10,%esp
c00017c0:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c00017c7:	eb 11                	jmp    c00017da <general_intr_handler+0x53>
c00017c9:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c00017cd:	83 ec 0c             	sub    $0xc,%esp
c00017d0:	6a 20                	push   $0x20
c00017d2:	e8 d9 08 00 00       	call   c00020b0 <put_char>
c00017d7:	83 c4 10             	add    $0x10,%esp
c00017da:	81 7d f4 3f 01 00 00 	cmpl   $0x13f,-0xc(%ebp)
c00017e1:	7e e6                	jle    c00017c9 <general_intr_handler+0x42>
c00017e3:	83 ec 0c             	sub    $0xc,%esp
c00017e6:	6a 50                	push   $0x50
c00017e8:	e8 27 0a 00 00       	call   c0002214 <set_cursor>
c00017ed:	83 c4 10             	add    $0x10,%esp
c00017f0:	83 ec 0c             	sub    $0xc,%esp
c00017f3:	8d 83 44 e0 ff ff    	lea    -0x1fbc(%ebx),%eax
c00017f9:	50                   	push   %eax
c00017fa:	e8 93 09 00 00       	call   c0002192 <put_str>
c00017ff:	83 c4 10             	add    $0x10,%esp
c0001802:	83 ec 0c             	sub    $0xc,%esp
c0001805:	68 a8 00 00 00       	push   $0xa8
c000180a:	e8 05 0a 00 00       	call   c0002214 <set_cursor>
c000180f:	83 c4 10             	add    $0x10,%esp
c0001812:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
c0001816:	8b 84 83 a0 00 00 00 	mov    0xa0(%ebx,%eax,4),%eax
c000181d:	83 ec 0c             	sub    $0xc,%esp
c0001820:	50                   	push   %eax
c0001821:	e8 6c 09 00 00       	call   c0002192 <put_str>
c0001826:	83 c4 10             	add    $0x10,%esp
c0001829:	80 7d e4 0e          	cmpb   $0xe,-0x1c(%ebp)
c000182d:	75 2e                	jne    c000185d <general_intr_handler+0xd6>
c000182f:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c0001836:	0f 20 d0             	mov    %cr2,%eax
c0001839:	89 45 f0             	mov    %eax,-0x10(%ebp)
c000183c:	83 ec 0c             	sub    $0xc,%esp
c000183f:	8d 83 7c e0 ff ff    	lea    -0x1f84(%ebx),%eax
c0001845:	50                   	push   %eax
c0001846:	e8 47 09 00 00       	call   c0002192 <put_str>
c000184b:	83 c4 10             	add    $0x10,%esp
c000184e:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0001851:	83 ec 0c             	sub    $0xc,%esp
c0001854:	50                   	push   %eax
c0001855:	e8 58 09 00 00       	call   c00021b2 <put_int>
c000185a:	83 c4 10             	add    $0x10,%esp
c000185d:	83 ec 0c             	sub    $0xc,%esp
c0001860:	8d 83 94 e0 ff ff    	lea    -0x1f6c(%ebx),%eax
c0001866:	50                   	push   %eax
c0001867:	e8 26 09 00 00       	call   c0002192 <put_str>
c000186c:	83 c4 10             	add    $0x10,%esp
c000186f:	eb fe                	jmp    c000186f <general_intr_handler+0xe8>
c0001871:	90                   	nop
c0001872:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0001875:	c9                   	leave  
c0001876:	c3                   	ret    

c0001877 <register_handler>:
c0001877:	55                   	push   %ebp
c0001878:	89 e5                	mov    %esp,%ebp
c000187a:	83 ec 04             	sub    $0x4,%esp
c000187d:	e8 96 02 00 00       	call   c0001b18 <__x86.get_pc_thunk.ax>
c0001882:	05 7e 47 00 00       	add    $0x477e,%eax
c0001887:	8b 55 08             	mov    0x8(%ebp),%edx
c000188a:	88 55 fc             	mov    %dl,-0x4(%ebp)
c000188d:	0f b6 55 fc          	movzbl -0x4(%ebp),%edx
c0001891:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c0001894:	89 8c 90 40 01 00 00 	mov    %ecx,0x140(%eax,%edx,4)
c000189b:	90                   	nop
c000189c:	c9                   	leave  
c000189d:	c3                   	ret    

c000189e <exception_init>:
c000189e:	55                   	push   %ebp
c000189f:	89 e5                	mov    %esp,%ebp
c00018a1:	83 ec 10             	sub    $0x10,%esp
c00018a4:	e8 6f 02 00 00       	call   c0001b18 <__x86.get_pc_thunk.ax>
c00018a9:	05 57 47 00 00       	add    $0x4757,%eax
c00018ae:	c6 45 ff 00          	movb   $0x0,-0x1(%ebp)
c00018b2:	eb 2c                	jmp    c00018e0 <exception_init+0x42>
c00018b4:	0f b6 55 ff          	movzbl -0x1(%ebp),%edx
c00018b8:	8d 88 87 b7 ff ff    	lea    -0x4879(%eax),%ecx
c00018be:	89 8c 90 40 01 00 00 	mov    %ecx,0x140(%eax,%edx,4)
c00018c5:	0f b6 55 ff          	movzbl -0x1(%ebp),%edx
c00018c9:	8d 88 c9 e0 ff ff    	lea    -0x1f37(%eax),%ecx
c00018cf:	89 8c 90 a0 00 00 00 	mov    %ecx,0xa0(%eax,%edx,4)
c00018d6:	0f b6 55 ff          	movzbl -0x1(%ebp),%edx
c00018da:	83 c2 01             	add    $0x1,%edx
c00018dd:	88 55 ff             	mov    %dl,-0x1(%ebp)
c00018e0:	80 7d ff 20          	cmpb   $0x20,-0x1(%ebp)
c00018e4:	76 ce                	jbe    c00018b4 <exception_init+0x16>
c00018e6:	8d 90 d0 e0 ff ff    	lea    -0x1f30(%eax),%edx
c00018ec:	89 90 a0 00 00 00    	mov    %edx,0xa0(%eax)
c00018f2:	8d 90 e1 e0 ff ff    	lea    -0x1f1f(%eax),%edx
c00018f8:	89 90 a4 00 00 00    	mov    %edx,0xa4(%eax)
c00018fe:	8d 90 f5 e0 ff ff    	lea    -0x1f0b(%eax),%edx
c0001904:	89 90 a8 00 00 00    	mov    %edx,0xa8(%eax)
c000190a:	8d 90 03 e1 ff ff    	lea    -0x1efd(%eax),%edx
c0001910:	89 90 ac 00 00 00    	mov    %edx,0xac(%eax)
c0001916:	8d 90 1c e1 ff ff    	lea    -0x1ee4(%eax),%edx
c000191c:	89 90 b0 00 00 00    	mov    %edx,0xb0(%eax)
c0001922:	8d 90 34 e1 ff ff    	lea    -0x1ecc(%eax),%edx
c0001928:	89 90 b4 00 00 00    	mov    %edx,0xb4(%eax)
c000192e:	8d 90 57 e1 ff ff    	lea    -0x1ea9(%eax),%edx
c0001934:	89 90 b8 00 00 00    	mov    %edx,0xb8(%eax)
c000193a:	8d 90 74 e1 ff ff    	lea    -0x1e8c(%eax),%edx
c0001940:	89 90 bc 00 00 00    	mov    %edx,0xbc(%eax)
c0001946:	8d 90 97 e1 ff ff    	lea    -0x1e69(%eax),%edx
c000194c:	89 90 c0 00 00 00    	mov    %edx,0xc0(%eax)
c0001952:	8d 90 b2 e1 ff ff    	lea    -0x1e4e(%eax),%edx
c0001958:	89 90 c4 00 00 00    	mov    %edx,0xc4(%eax)
c000195e:	8d 90 ce e1 ff ff    	lea    -0x1e32(%eax),%edx
c0001964:	89 90 c8 00 00 00    	mov    %edx,0xc8(%eax)
c000196a:	8d 90 e8 e1 ff ff    	lea    -0x1e18(%eax),%edx
c0001970:	89 90 cc 00 00 00    	mov    %edx,0xcc(%eax)
c0001976:	8d 90 00 e2 ff ff    	lea    -0x1e00(%eax),%edx
c000197c:	89 90 d0 00 00 00    	mov    %edx,0xd0(%eax)
c0001982:	8d 90 1c e2 ff ff    	lea    -0x1de4(%eax),%edx
c0001988:	89 90 d4 00 00 00    	mov    %edx,0xd4(%eax)
c000198e:	8d 90 3d e2 ff ff    	lea    -0x1dc3(%eax),%edx
c0001994:	89 90 d8 00 00 00    	mov    %edx,0xd8(%eax)
c000199a:	8d 90 58 e2 ff ff    	lea    -0x1da8(%eax),%edx
c00019a0:	89 90 e0 00 00 00    	mov    %edx,0xe0(%eax)
c00019a6:	8d 90 79 e2 ff ff    	lea    -0x1d87(%eax),%edx
c00019ac:	89 90 e4 00 00 00    	mov    %edx,0xe4(%eax)
c00019b2:	8d 90 97 e2 ff ff    	lea    -0x1d69(%eax),%edx
c00019b8:	89 90 e8 00 00 00    	mov    %edx,0xe8(%eax)
c00019be:	8d 90 b4 e2 ff ff    	lea    -0x1d4c(%eax),%edx
c00019c4:	89 90 ec 00 00 00    	mov    %edx,0xec(%eax)
c00019ca:	90                   	nop
c00019cb:	c9                   	leave  
c00019cc:	c3                   	ret    

c00019cd <init_idt>:
c00019cd:	55                   	push   %ebp
c00019ce:	89 e5                	mov    %esp,%ebp
c00019d0:	53                   	push   %ebx
c00019d1:	83 ec 14             	sub    $0x14,%esp
c00019d4:	e8 0f fc ff ff       	call   c00015e8 <__x86.get_pc_thunk.bx>
c00019d9:	81 c3 27 46 00 00    	add    $0x4627,%ebx
c00019df:	e8 49 fd ff ff       	call   c000172d <init_idt_desc>
c00019e4:	e8 b5 fe ff ff       	call   c000189e <exception_init>
c00019e9:	e8 55 fc ff ff       	call   c0001643 <init_pic>
c00019ee:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c00019f5:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c00019fc:	8b 83 c4 01 00 00    	mov    0x1c4(%ebx),%eax
c0001a02:	c1 e0 10             	shl    $0x10,%eax
c0001a05:	0d 07 01 00 00       	or     $0x107,%eax
c0001a0a:	ba 00 00 00 00       	mov    $0x0,%edx
c0001a0f:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0001a12:	89 55 f4             	mov    %edx,-0xc(%ebp)
c0001a15:	0f 01 5d f0          	lidtl  -0x10(%ebp)
c0001a19:	83 ec 0c             	sub    $0xc,%esp
c0001a1c:	8d 83 d6 e2 ff ff    	lea    -0x1d2a(%ebx),%eax
c0001a22:	50                   	push   %eax
c0001a23:	e8 6a 07 00 00       	call   c0002192 <put_str>
c0001a28:	83 c4 10             	add    $0x10,%esp
c0001a2b:	8d 83 40 01 00 00    	lea    0x140(%ebx),%eax
c0001a31:	83 ec 0c             	sub    $0xc,%esp
c0001a34:	50                   	push   %eax
c0001a35:	e8 78 07 00 00       	call   c00021b2 <put_int>
c0001a3a:	83 c4 10             	add    $0x10,%esp
c0001a3d:	83 ec 0c             	sub    $0xc,%esp
c0001a40:	8d 83 e0 e2 ff ff    	lea    -0x1d20(%ebx),%eax
c0001a46:	50                   	push   %eax
c0001a47:	e8 46 07 00 00       	call   c0002192 <put_str>
c0001a4c:	83 c4 10             	add    $0x10,%esp
c0001a4f:	8b 83 40 01 00 00    	mov    0x140(%ebx),%eax
c0001a55:	83 ec 0c             	sub    $0xc,%esp
c0001a58:	50                   	push   %eax
c0001a59:	e8 54 07 00 00       	call   c00021b2 <put_int>
c0001a5e:	83 c4 10             	add    $0x10,%esp
c0001a61:	90                   	nop
c0001a62:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0001a65:	c9                   	leave  
c0001a66:	c3                   	ret    

c0001a67 <intr_enable>:
c0001a67:	55                   	push   %ebp
c0001a68:	89 e5                	mov    %esp,%ebp
c0001a6a:	83 ec 18             	sub    $0x18,%esp
c0001a6d:	e8 a6 00 00 00       	call   c0001b18 <__x86.get_pc_thunk.ax>
c0001a72:	05 8e 45 00 00       	add    $0x458e,%eax
c0001a77:	e8 51 00 00 00       	call   c0001acd <intr_get_status>
c0001a7c:	83 f8 01             	cmp    $0x1,%eax
c0001a7f:	75 0c                	jne    c0001a8d <intr_enable+0x26>
c0001a81:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
c0001a88:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0001a8b:	eb 0b                	jmp    c0001a98 <intr_enable+0x31>
c0001a8d:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0001a94:	fb                   	sti    
c0001a95:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0001a98:	c9                   	leave  
c0001a99:	c3                   	ret    

c0001a9a <intr_disable>:
c0001a9a:	55                   	push   %ebp
c0001a9b:	89 e5                	mov    %esp,%ebp
c0001a9d:	83 ec 18             	sub    $0x18,%esp
c0001aa0:	e8 73 00 00 00       	call   c0001b18 <__x86.get_pc_thunk.ax>
c0001aa5:	05 5b 45 00 00       	add    $0x455b,%eax
c0001aaa:	e8 1e 00 00 00       	call   c0001acd <intr_get_status>
c0001aaf:	83 f8 01             	cmp    $0x1,%eax
c0001ab2:	75 0d                	jne    c0001ac1 <intr_disable+0x27>
c0001ab4:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
c0001abb:	fa                   	cli    
c0001abc:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0001abf:	eb 0a                	jmp    c0001acb <intr_disable+0x31>
c0001ac1:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0001ac8:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0001acb:	c9                   	leave  
c0001acc:	c3                   	ret    

c0001acd <intr_get_status>:
c0001acd:	55                   	push   %ebp
c0001ace:	89 e5                	mov    %esp,%ebp
c0001ad0:	83 ec 10             	sub    $0x10,%esp
c0001ad3:	e8 40 00 00 00       	call   c0001b18 <__x86.get_pc_thunk.ax>
c0001ad8:	05 28 45 00 00       	add    $0x4528,%eax
c0001add:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0001ae4:	9c                   	pushf  
c0001ae5:	58                   	pop    %eax
c0001ae6:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0001ae9:	b8 01 00 00 00       	mov    $0x1,%eax
c0001aee:	c9                   	leave  
c0001aef:	c3                   	ret    

c0001af0 <intr_set_status>:
c0001af0:	55                   	push   %ebp
c0001af1:	89 e5                	mov    %esp,%ebp
c0001af3:	83 ec 08             	sub    $0x8,%esp
c0001af6:	e8 1d 00 00 00       	call   c0001b18 <__x86.get_pc_thunk.ax>
c0001afb:	05 05 45 00 00       	add    $0x4505,%eax
c0001b00:	8b 45 08             	mov    0x8(%ebp),%eax
c0001b03:	83 e0 01             	and    $0x1,%eax
c0001b06:	85 c0                	test   %eax,%eax
c0001b08:	74 07                	je     c0001b11 <intr_set_status+0x21>
c0001b0a:	e8 58 ff ff ff       	call   c0001a67 <intr_enable>
c0001b0f:	eb 05                	jmp    c0001b16 <intr_set_status+0x26>
c0001b11:	e8 84 ff ff ff       	call   c0001a9a <intr_disable>
c0001b16:	c9                   	leave  
c0001b17:	c3                   	ret    

c0001b18 <__x86.get_pc_thunk.ax>:
c0001b18:	8b 04 24             	mov    (%esp),%eax
c0001b1b:	c3                   	ret    

c0001b1c <outb>:
c0001b1c:	55                   	push   %ebp
c0001b1d:	89 e5                	mov    %esp,%ebp
c0001b1f:	83 ec 08             	sub    $0x8,%esp
c0001b22:	e8 f1 ff ff ff       	call   c0001b18 <__x86.get_pc_thunk.ax>
c0001b27:	05 d9 44 00 00       	add    $0x44d9,%eax
c0001b2c:	8b 45 08             	mov    0x8(%ebp),%eax
c0001b2f:	8b 55 0c             	mov    0xc(%ebp),%edx
c0001b32:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0001b36:	89 d0                	mov    %edx,%eax
c0001b38:	88 45 f8             	mov    %al,-0x8(%ebp)
c0001b3b:	0f b6 45 f8          	movzbl -0x8(%ebp),%eax
c0001b3f:	0f b7 55 fc          	movzwl -0x4(%ebp),%edx
c0001b43:	ee                   	out    %al,(%dx)
c0001b44:	90                   	nop
c0001b45:	c9                   	leave  
c0001b46:	c3                   	ret    

c0001b47 <frequency_set>:
c0001b47:	55                   	push   %ebp
c0001b48:	89 e5                	mov    %esp,%ebp
c0001b4a:	57                   	push   %edi
c0001b4b:	56                   	push   %esi
c0001b4c:	53                   	push   %ebx
c0001b4d:	83 ec 14             	sub    $0x14,%esp
c0001b50:	e8 c3 ff ff ff       	call   c0001b18 <__x86.get_pc_thunk.ax>
c0001b55:	05 ab 44 00 00       	add    $0x44ab,%eax
c0001b5a:	8b 75 08             	mov    0x8(%ebp),%esi
c0001b5d:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0001b60:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0001b63:	8b 55 14             	mov    0x14(%ebp),%edx
c0001b66:	8b 7d 18             	mov    0x18(%ebp),%edi
c0001b69:	89 f0                	mov    %esi,%eax
c0001b6b:	88 45 f0             	mov    %al,-0x10(%ebp)
c0001b6e:	88 5d ec             	mov    %bl,-0x14(%ebp)
c0001b71:	88 4d e8             	mov    %cl,-0x18(%ebp)
c0001b74:	88 55 e4             	mov    %dl,-0x1c(%ebp)
c0001b77:	89 f8                	mov    %edi,%eax
c0001b79:	66 89 45 e0          	mov    %ax,-0x20(%ebp)
c0001b7d:	0f b6 45 ec          	movzbl -0x14(%ebp),%eax
c0001b81:	c1 e0 06             	shl    $0x6,%eax
c0001b84:	89 c2                	mov    %eax,%edx
c0001b86:	0f b6 45 e8          	movzbl -0x18(%ebp),%eax
c0001b8a:	c1 e0 04             	shl    $0x4,%eax
c0001b8d:	09 c2                	or     %eax,%edx
c0001b8f:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
c0001b93:	01 c0                	add    %eax,%eax
c0001b95:	09 d0                	or     %edx,%eax
c0001b97:	0f b6 c0             	movzbl %al,%eax
c0001b9a:	50                   	push   %eax
c0001b9b:	6a 43                	push   $0x43
c0001b9d:	e8 7a ff ff ff       	call   c0001b1c <outb>
c0001ba2:	83 c4 08             	add    $0x8,%esp
c0001ba5:	0f b7 45 e0          	movzwl -0x20(%ebp),%eax
c0001ba9:	0f b6 d0             	movzbl %al,%edx
c0001bac:	0f b6 45 f0          	movzbl -0x10(%ebp),%eax
c0001bb0:	52                   	push   %edx
c0001bb1:	50                   	push   %eax
c0001bb2:	e8 65 ff ff ff       	call   c0001b1c <outb>
c0001bb7:	83 c4 08             	add    $0x8,%esp
c0001bba:	0f b7 45 e0          	movzwl -0x20(%ebp),%eax
c0001bbe:	0f b6 c0             	movzbl %al,%eax
c0001bc1:	c1 f8 08             	sar    $0x8,%eax
c0001bc4:	0f b6 d0             	movzbl %al,%edx
c0001bc7:	0f b6 45 f0          	movzbl -0x10(%ebp),%eax
c0001bcb:	52                   	push   %edx
c0001bcc:	50                   	push   %eax
c0001bcd:	e8 4a ff ff ff       	call   c0001b1c <outb>
c0001bd2:	83 c4 08             	add    $0x8,%esp
c0001bd5:	90                   	nop
c0001bd6:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0001bd9:	5b                   	pop    %ebx
c0001bda:	5e                   	pop    %esi
c0001bdb:	5f                   	pop    %edi
c0001bdc:	5d                   	pop    %ebp
c0001bdd:	c3                   	ret    

c0001bde <timer_intr>:
c0001bde:	55                   	push   %ebp
c0001bdf:	89 e5                	mov    %esp,%ebp
c0001be1:	53                   	push   %ebx
c0001be2:	83 ec 14             	sub    $0x14,%esp
c0001be5:	e8 fe f9 ff ff       	call   c00015e8 <__x86.get_pc_thunk.bx>
c0001bea:	81 c3 16 44 00 00    	add    $0x4416,%ebx
c0001bf0:	e8 3b 14 00 00       	call   c0003030 <running_thread>
c0001bf5:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0001bf8:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0001bfb:	8b 40 30             	mov    0x30(%eax),%eax
c0001bfe:	3d 13 09 22 20       	cmp    $0x20220913,%eax
c0001c03:	74 1f                	je     c0001c24 <timer_intr+0x46>
c0001c05:	8d 83 ec e2 ff ff    	lea    -0x1d14(%ebx),%eax
c0001c0b:	50                   	push   %eax
c0001c0c:	8d 83 18 e3 ff ff    	lea    -0x1ce8(%ebx),%eax
c0001c12:	50                   	push   %eax
c0001c13:	6a 25                	push   $0x25
c0001c15:	8d 83 10 e3 ff ff    	lea    -0x1cf0(%ebx),%eax
c0001c1b:	50                   	push   %eax
c0001c1c:	e8 1f 06 00 00       	call   c0002240 <panic_spin>
c0001c21:	83 c4 10             	add    $0x10,%esp
c0001c24:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0001c27:	8b 40 10             	mov    0x10(%eax),%eax
c0001c2a:	8d 50 01             	lea    0x1(%eax),%edx
c0001c2d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0001c30:	89 50 10             	mov    %edx,0x10(%eax)
c0001c33:	8b 83 c8 01 00 00    	mov    0x1c8(%ebx),%eax
c0001c39:	83 c0 01             	add    $0x1,%eax
c0001c3c:	89 83 c8 01 00 00    	mov    %eax,0x1c8(%ebx)
c0001c42:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0001c45:	0f b6 40 0c          	movzbl 0xc(%eax),%eax
c0001c49:	84 c0                	test   %al,%al
c0001c4b:	75 07                	jne    c0001c54 <timer_intr+0x76>
c0001c4d:	e8 ed 16 00 00       	call   c000333f <schedule>
c0001c52:	eb 10                	jmp    c0001c64 <timer_intr+0x86>
c0001c54:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0001c57:	0f b6 40 0c          	movzbl 0xc(%eax),%eax
c0001c5b:	8d 50 ff             	lea    -0x1(%eax),%edx
c0001c5e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0001c61:	88 50 0c             	mov    %dl,0xc(%eax)
c0001c64:	90                   	nop
c0001c65:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0001c68:	c9                   	leave  
c0001c69:	c3                   	ret    

c0001c6a <init_time>:
c0001c6a:	55                   	push   %ebp
c0001c6b:	89 e5                	mov    %esp,%ebp
c0001c6d:	53                   	push   %ebx
c0001c6e:	83 ec 04             	sub    $0x4,%esp
c0001c71:	e8 72 f9 ff ff       	call   c00015e8 <__x86.get_pc_thunk.bx>
c0001c76:	81 c3 8a 43 00 00    	add    $0x438a,%ebx
c0001c7c:	68 9b 2e 00 00       	push   $0x2e9b
c0001c81:	6a 02                	push   $0x2
c0001c83:	6a 03                	push   $0x3
c0001c85:	6a 00                	push   $0x0
c0001c87:	6a 40                	push   $0x40
c0001c89:	e8 b9 fe ff ff       	call   c0001b47 <frequency_set>
c0001c8e:	83 c4 14             	add    $0x14,%esp
c0001c91:	83 ec 08             	sub    $0x8,%esp
c0001c94:	8d 83 de bb ff ff    	lea    -0x4422(%ebx),%eax
c0001c9a:	50                   	push   %eax
c0001c9b:	6a 20                	push   $0x20
c0001c9d:	e8 d5 fb ff ff       	call   c0001877 <register_handler>
c0001ca2:	83 c4 10             	add    $0x10,%esp
c0001ca5:	90                   	nop
c0001ca6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0001ca9:	c9                   	leave  
c0001caa:	c3                   	ret    
c0001cab:	66 90                	xchg   %ax,%ax
c0001cad:	66 90                	xchg   %ax,%ax
c0001caf:	90                   	nop

c0001cb0 <intr_exit>:
c0001cb0:	61                   	popa   
c0001cb1:	0f a9                	pop    %gs
c0001cb3:	0f a1                	pop    %fs
c0001cb5:	07                   	pop    %es
c0001cb6:	1f                   	pop    %ds
c0001cb7:	83 c4 04             	add    $0x4,%esp
c0001cba:	cf                   	iret   

c0001cbb <intr0x0entry>:
c0001cbb:	6a 00                	push   $0x0
c0001cbd:	1e                   	push   %ds
c0001cbe:	06                   	push   %es
c0001cbf:	0f a0                	push   %fs
c0001cc1:	0f a8                	push   %gs
c0001cc3:	60                   	pusha  
c0001cc4:	b0 20                	mov    $0x20,%al
c0001cc6:	e6 a0                	out    %al,$0xa0
c0001cc8:	e6 20                	out    %al,$0x20
c0001cca:	6a 00                	push   $0x0
c0001ccc:	ff 15 40 61 00 c0    	call   *0xc0006140
c0001cd2:	83 c4 04             	add    $0x4,%esp
c0001cd5:	eb d9                	jmp    c0001cb0 <intr_exit>

c0001cd7 <intr0X1entry>:
c0001cd7:	6a 00                	push   $0x0
c0001cd9:	1e                   	push   %ds
c0001cda:	06                   	push   %es
c0001cdb:	0f a0                	push   %fs
c0001cdd:	0f a8                	push   %gs
c0001cdf:	60                   	pusha  
c0001ce0:	b0 20                	mov    $0x20,%al
c0001ce2:	e6 a0                	out    %al,$0xa0
c0001ce4:	e6 20                	out    %al,$0x20
c0001ce6:	6a 01                	push   $0x1
c0001ce8:	ff 15 44 61 00 c0    	call   *0xc0006144
c0001cee:	83 c4 04             	add    $0x4,%esp
c0001cf1:	eb bd                	jmp    c0001cb0 <intr_exit>

c0001cf3 <intr0X2entry>:
c0001cf3:	6a 00                	push   $0x0
c0001cf5:	1e                   	push   %ds
c0001cf6:	06                   	push   %es
c0001cf7:	0f a0                	push   %fs
c0001cf9:	0f a8                	push   %gs
c0001cfb:	60                   	pusha  
c0001cfc:	b0 20                	mov    $0x20,%al
c0001cfe:	e6 a0                	out    %al,$0xa0
c0001d00:	e6 20                	out    %al,$0x20
c0001d02:	6a 02                	push   $0x2
c0001d04:	ff 15 48 61 00 c0    	call   *0xc0006148
c0001d0a:	83 c4 04             	add    $0x4,%esp
c0001d0d:	eb a1                	jmp    c0001cb0 <intr_exit>

c0001d0f <intr0x3entry>:
c0001d0f:	6a 00                	push   $0x0
c0001d11:	1e                   	push   %ds
c0001d12:	06                   	push   %es
c0001d13:	0f a0                	push   %fs
c0001d15:	0f a8                	push   %gs
c0001d17:	60                   	pusha  
c0001d18:	b0 20                	mov    $0x20,%al
c0001d1a:	e6 a0                	out    %al,$0xa0
c0001d1c:	e6 20                	out    %al,$0x20
c0001d1e:	6a 03                	push   $0x3
c0001d20:	ff 15 4c 61 00 c0    	call   *0xc000614c
c0001d26:	83 c4 04             	add    $0x4,%esp
c0001d29:	eb 85                	jmp    c0001cb0 <intr_exit>

c0001d2b <intr0X4entry>:
c0001d2b:	6a 00                	push   $0x0
c0001d2d:	1e                   	push   %ds
c0001d2e:	06                   	push   %es
c0001d2f:	0f a0                	push   %fs
c0001d31:	0f a8                	push   %gs
c0001d33:	60                   	pusha  
c0001d34:	b0 20                	mov    $0x20,%al
c0001d36:	e6 a0                	out    %al,$0xa0
c0001d38:	e6 20                	out    %al,$0x20
c0001d3a:	6a 04                	push   $0x4
c0001d3c:	ff 15 50 61 00 c0    	call   *0xc0006150
c0001d42:	83 c4 04             	add    $0x4,%esp
c0001d45:	e9 66 ff ff ff       	jmp    c0001cb0 <intr_exit>

c0001d4a <intr0X5entry>:
c0001d4a:	6a 00                	push   $0x0
c0001d4c:	1e                   	push   %ds
c0001d4d:	06                   	push   %es
c0001d4e:	0f a0                	push   %fs
c0001d50:	0f a8                	push   %gs
c0001d52:	60                   	pusha  
c0001d53:	b0 20                	mov    $0x20,%al
c0001d55:	e6 a0                	out    %al,$0xa0
c0001d57:	e6 20                	out    %al,$0x20
c0001d59:	6a 05                	push   $0x5
c0001d5b:	ff 15 54 61 00 c0    	call   *0xc0006154
c0001d61:	83 c4 04             	add    $0x4,%esp
c0001d64:	e9 47 ff ff ff       	jmp    c0001cb0 <intr_exit>

c0001d69 <intr0x6entry>:
c0001d69:	6a 00                	push   $0x0
c0001d6b:	1e                   	push   %ds
c0001d6c:	06                   	push   %es
c0001d6d:	0f a0                	push   %fs
c0001d6f:	0f a8                	push   %gs
c0001d71:	60                   	pusha  
c0001d72:	b0 20                	mov    $0x20,%al
c0001d74:	e6 a0                	out    %al,$0xa0
c0001d76:	e6 20                	out    %al,$0x20
c0001d78:	6a 06                	push   $0x6
c0001d7a:	ff 15 58 61 00 c0    	call   *0xc0006158
c0001d80:	83 c4 04             	add    $0x4,%esp
c0001d83:	e9 28 ff ff ff       	jmp    c0001cb0 <intr_exit>

c0001d88 <intr0X7entry>:
c0001d88:	6a 00                	push   $0x0
c0001d8a:	1e                   	push   %ds
c0001d8b:	06                   	push   %es
c0001d8c:	0f a0                	push   %fs
c0001d8e:	0f a8                	push   %gs
c0001d90:	60                   	pusha  
c0001d91:	b0 20                	mov    $0x20,%al
c0001d93:	e6 a0                	out    %al,$0xa0
c0001d95:	e6 20                	out    %al,$0x20
c0001d97:	6a 07                	push   $0x7
c0001d99:	ff 15 5c 61 00 c0    	call   *0xc000615c
c0001d9f:	83 c4 04             	add    $0x4,%esp
c0001da2:	e9 09 ff ff ff       	jmp    c0001cb0 <intr_exit>

c0001da7 <intr0X8entry>:
c0001da7:	90                   	nop
c0001da8:	1e                   	push   %ds
c0001da9:	06                   	push   %es
c0001daa:	0f a0                	push   %fs
c0001dac:	0f a8                	push   %gs
c0001dae:	60                   	pusha  
c0001daf:	b0 20                	mov    $0x20,%al
c0001db1:	e6 a0                	out    %al,$0xa0
c0001db3:	e6 20                	out    %al,$0x20
c0001db5:	6a 08                	push   $0x8
c0001db7:	ff 15 60 61 00 c0    	call   *0xc0006160
c0001dbd:	83 c4 04             	add    $0x4,%esp
c0001dc0:	e9 eb fe ff ff       	jmp    c0001cb0 <intr_exit>

c0001dc5 <intr0x9entry>:
c0001dc5:	6a 00                	push   $0x0
c0001dc7:	1e                   	push   %ds
c0001dc8:	06                   	push   %es
c0001dc9:	0f a0                	push   %fs
c0001dcb:	0f a8                	push   %gs
c0001dcd:	60                   	pusha  
c0001dce:	b0 20                	mov    $0x20,%al
c0001dd0:	e6 a0                	out    %al,$0xa0
c0001dd2:	e6 20                	out    %al,$0x20
c0001dd4:	6a 09                	push   $0x9
c0001dd6:	ff 15 64 61 00 c0    	call   *0xc0006164
c0001ddc:	83 c4 04             	add    $0x4,%esp
c0001ddf:	e9 cc fe ff ff       	jmp    c0001cb0 <intr_exit>

c0001de4 <intr0XAentry>:
c0001de4:	90                   	nop
c0001de5:	1e                   	push   %ds
c0001de6:	06                   	push   %es
c0001de7:	0f a0                	push   %fs
c0001de9:	0f a8                	push   %gs
c0001deb:	60                   	pusha  
c0001dec:	b0 20                	mov    $0x20,%al
c0001dee:	e6 a0                	out    %al,$0xa0
c0001df0:	e6 20                	out    %al,$0x20
c0001df2:	6a 0a                	push   $0xa
c0001df4:	ff 15 68 61 00 c0    	call   *0xc0006168
c0001dfa:	83 c4 04             	add    $0x4,%esp
c0001dfd:	e9 ae fe ff ff       	jmp    c0001cb0 <intr_exit>

c0001e02 <intr0XBentry>:
c0001e02:	90                   	nop
c0001e03:	1e                   	push   %ds
c0001e04:	06                   	push   %es
c0001e05:	0f a0                	push   %fs
c0001e07:	0f a8                	push   %gs
c0001e09:	60                   	pusha  
c0001e0a:	b0 20                	mov    $0x20,%al
c0001e0c:	e6 a0                	out    %al,$0xa0
c0001e0e:	e6 20                	out    %al,$0x20
c0001e10:	6a 0b                	push   $0xb
c0001e12:	ff 15 6c 61 00 c0    	call   *0xc000616c
c0001e18:	83 c4 04             	add    $0x4,%esp
c0001e1b:	e9 90 fe ff ff       	jmp    c0001cb0 <intr_exit>

c0001e20 <intr0XCentry>:
c0001e20:	90                   	nop
c0001e21:	1e                   	push   %ds
c0001e22:	06                   	push   %es
c0001e23:	0f a0                	push   %fs
c0001e25:	0f a8                	push   %gs
c0001e27:	60                   	pusha  
c0001e28:	b0 20                	mov    $0x20,%al
c0001e2a:	e6 a0                	out    %al,$0xa0
c0001e2c:	e6 20                	out    %al,$0x20
c0001e2e:	6a 0c                	push   $0xc
c0001e30:	ff 15 70 61 00 c0    	call   *0xc0006170
c0001e36:	83 c4 04             	add    $0x4,%esp
c0001e39:	e9 72 fe ff ff       	jmp    c0001cb0 <intr_exit>

c0001e3e <intr0XDentry>:
c0001e3e:	90                   	nop
c0001e3f:	1e                   	push   %ds
c0001e40:	06                   	push   %es
c0001e41:	0f a0                	push   %fs
c0001e43:	0f a8                	push   %gs
c0001e45:	60                   	pusha  
c0001e46:	b0 20                	mov    $0x20,%al
c0001e48:	e6 a0                	out    %al,$0xa0
c0001e4a:	e6 20                	out    %al,$0x20
c0001e4c:	6a 0d                	push   $0xd
c0001e4e:	ff 15 74 61 00 c0    	call   *0xc0006174
c0001e54:	83 c4 04             	add    $0x4,%esp
c0001e57:	e9 54 fe ff ff       	jmp    c0001cb0 <intr_exit>

c0001e5c <intr0XEentry>:
c0001e5c:	90                   	nop
c0001e5d:	1e                   	push   %ds
c0001e5e:	06                   	push   %es
c0001e5f:	0f a0                	push   %fs
c0001e61:	0f a8                	push   %gs
c0001e63:	60                   	pusha  
c0001e64:	b0 20                	mov    $0x20,%al
c0001e66:	e6 a0                	out    %al,$0xa0
c0001e68:	e6 20                	out    %al,$0x20
c0001e6a:	6a 0e                	push   $0xe
c0001e6c:	ff 15 78 61 00 c0    	call   *0xc0006178
c0001e72:	83 c4 04             	add    $0x4,%esp
c0001e75:	e9 36 fe ff ff       	jmp    c0001cb0 <intr_exit>

c0001e7a <intr0XFentry>:
c0001e7a:	6a 00                	push   $0x0
c0001e7c:	1e                   	push   %ds
c0001e7d:	06                   	push   %es
c0001e7e:	0f a0                	push   %fs
c0001e80:	0f a8                	push   %gs
c0001e82:	60                   	pusha  
c0001e83:	b0 20                	mov    $0x20,%al
c0001e85:	e6 a0                	out    %al,$0xa0
c0001e87:	e6 20                	out    %al,$0x20
c0001e89:	6a 0f                	push   $0xf
c0001e8b:	ff 15 7c 61 00 c0    	call   *0xc000617c
c0001e91:	83 c4 04             	add    $0x4,%esp
c0001e94:	e9 17 fe ff ff       	jmp    c0001cb0 <intr_exit>

c0001e99 <intr0X10entry>:
c0001e99:	6a 00                	push   $0x0
c0001e9b:	1e                   	push   %ds
c0001e9c:	06                   	push   %es
c0001e9d:	0f a0                	push   %fs
c0001e9f:	0f a8                	push   %gs
c0001ea1:	60                   	pusha  
c0001ea2:	b0 20                	mov    $0x20,%al
c0001ea4:	e6 a0                	out    %al,$0xa0
c0001ea6:	e6 20                	out    %al,$0x20
c0001ea8:	6a 10                	push   $0x10
c0001eaa:	ff 15 80 61 00 c0    	call   *0xc0006180
c0001eb0:	83 c4 04             	add    $0x4,%esp
c0001eb3:	e9 f8 fd ff ff       	jmp    c0001cb0 <intr_exit>

c0001eb8 <intr0X11entry>:
c0001eb8:	90                   	nop
c0001eb9:	1e                   	push   %ds
c0001eba:	06                   	push   %es
c0001ebb:	0f a0                	push   %fs
c0001ebd:	0f a8                	push   %gs
c0001ebf:	60                   	pusha  
c0001ec0:	b0 20                	mov    $0x20,%al
c0001ec2:	e6 a0                	out    %al,$0xa0
c0001ec4:	e6 20                	out    %al,$0x20
c0001ec6:	6a 11                	push   $0x11
c0001ec8:	ff 15 84 61 00 c0    	call   *0xc0006184
c0001ece:	83 c4 04             	add    $0x4,%esp
c0001ed1:	e9 da fd ff ff       	jmp    c0001cb0 <intr_exit>

c0001ed6 <intr0x12entry>:
c0001ed6:	6a 00                	push   $0x0
c0001ed8:	1e                   	push   %ds
c0001ed9:	06                   	push   %es
c0001eda:	0f a0                	push   %fs
c0001edc:	0f a8                	push   %gs
c0001ede:	60                   	pusha  
c0001edf:	b0 20                	mov    $0x20,%al
c0001ee1:	e6 a0                	out    %al,$0xa0
c0001ee3:	e6 20                	out    %al,$0x20
c0001ee5:	6a 12                	push   $0x12
c0001ee7:	ff 15 88 61 00 c0    	call   *0xc0006188
c0001eed:	83 c4 04             	add    $0x4,%esp
c0001ef0:	e9 bb fd ff ff       	jmp    c0001cb0 <intr_exit>

c0001ef5 <intr0X13entry>:
c0001ef5:	6a 00                	push   $0x0
c0001ef7:	1e                   	push   %ds
c0001ef8:	06                   	push   %es
c0001ef9:	0f a0                	push   %fs
c0001efb:	0f a8                	push   %gs
c0001efd:	60                   	pusha  
c0001efe:	b0 20                	mov    $0x20,%al
c0001f00:	e6 a0                	out    %al,$0xa0
c0001f02:	e6 20                	out    %al,$0x20
c0001f04:	6a 13                	push   $0x13
c0001f06:	ff 15 8c 61 00 c0    	call   *0xc000618c
c0001f0c:	83 c4 04             	add    $0x4,%esp
c0001f0f:	e9 9c fd ff ff       	jmp    c0001cb0 <intr_exit>

c0001f14 <intr0X14entry>:
c0001f14:	6a 00                	push   $0x0
c0001f16:	1e                   	push   %ds
c0001f17:	06                   	push   %es
c0001f18:	0f a0                	push   %fs
c0001f1a:	0f a8                	push   %gs
c0001f1c:	60                   	pusha  
c0001f1d:	b0 20                	mov    $0x20,%al
c0001f1f:	e6 a0                	out    %al,$0xa0
c0001f21:	e6 20                	out    %al,$0x20
c0001f23:	6a 14                	push   $0x14
c0001f25:	ff 15 90 61 00 c0    	call   *0xc0006190
c0001f2b:	83 c4 04             	add    $0x4,%esp
c0001f2e:	e9 7d fd ff ff       	jmp    c0001cb0 <intr_exit>

c0001f33 <intr0x15entry>:
c0001f33:	6a 00                	push   $0x0
c0001f35:	1e                   	push   %ds
c0001f36:	06                   	push   %es
c0001f37:	0f a0                	push   %fs
c0001f39:	0f a8                	push   %gs
c0001f3b:	60                   	pusha  
c0001f3c:	b0 20                	mov    $0x20,%al
c0001f3e:	e6 a0                	out    %al,$0xa0
c0001f40:	e6 20                	out    %al,$0x20
c0001f42:	6a 15                	push   $0x15
c0001f44:	ff 15 94 61 00 c0    	call   *0xc0006194
c0001f4a:	83 c4 04             	add    $0x4,%esp
c0001f4d:	e9 5e fd ff ff       	jmp    c0001cb0 <intr_exit>

c0001f52 <intr0X16entry>:
c0001f52:	6a 00                	push   $0x0
c0001f54:	1e                   	push   %ds
c0001f55:	06                   	push   %es
c0001f56:	0f a0                	push   %fs
c0001f58:	0f a8                	push   %gs
c0001f5a:	60                   	pusha  
c0001f5b:	b0 20                	mov    $0x20,%al
c0001f5d:	e6 a0                	out    %al,$0xa0
c0001f5f:	e6 20                	out    %al,$0x20
c0001f61:	6a 16                	push   $0x16
c0001f63:	ff 15 98 61 00 c0    	call   *0xc0006198
c0001f69:	83 c4 04             	add    $0x4,%esp
c0001f6c:	e9 3f fd ff ff       	jmp    c0001cb0 <intr_exit>

c0001f71 <intr0X17entry>:
c0001f71:	6a 00                	push   $0x0
c0001f73:	1e                   	push   %ds
c0001f74:	06                   	push   %es
c0001f75:	0f a0                	push   %fs
c0001f77:	0f a8                	push   %gs
c0001f79:	60                   	pusha  
c0001f7a:	b0 20                	mov    $0x20,%al
c0001f7c:	e6 a0                	out    %al,$0xa0
c0001f7e:	e6 20                	out    %al,$0x20
c0001f80:	6a 17                	push   $0x17
c0001f82:	ff 15 9c 61 00 c0    	call   *0xc000619c
c0001f88:	83 c4 04             	add    $0x4,%esp
c0001f8b:	e9 20 fd ff ff       	jmp    c0001cb0 <intr_exit>

c0001f90 <intr0X18entry>:
c0001f90:	6a 00                	push   $0x0
c0001f92:	1e                   	push   %ds
c0001f93:	06                   	push   %es
c0001f94:	0f a0                	push   %fs
c0001f96:	0f a8                	push   %gs
c0001f98:	60                   	pusha  
c0001f99:	b0 20                	mov    $0x20,%al
c0001f9b:	e6 a0                	out    %al,$0xa0
c0001f9d:	e6 20                	out    %al,$0x20
c0001f9f:	6a 18                	push   $0x18
c0001fa1:	ff 15 a0 61 00 c0    	call   *0xc00061a0
c0001fa7:	83 c4 04             	add    $0x4,%esp
c0001faa:	e9 01 fd ff ff       	jmp    c0001cb0 <intr_exit>

c0001faf <intr0X19entry>:
c0001faf:	6a 00                	push   $0x0
c0001fb1:	1e                   	push   %ds
c0001fb2:	06                   	push   %es
c0001fb3:	0f a0                	push   %fs
c0001fb5:	0f a8                	push   %gs
c0001fb7:	60                   	pusha  
c0001fb8:	b0 20                	mov    $0x20,%al
c0001fba:	e6 a0                	out    %al,$0xa0
c0001fbc:	e6 20                	out    %al,$0x20
c0001fbe:	6a 19                	push   $0x19
c0001fc0:	ff 15 a4 61 00 c0    	call   *0xc00061a4
c0001fc6:	83 c4 04             	add    $0x4,%esp
c0001fc9:	e9 e2 fc ff ff       	jmp    c0001cb0 <intr_exit>

c0001fce <intr0X1Aentry>:
c0001fce:	6a 00                	push   $0x0
c0001fd0:	1e                   	push   %ds
c0001fd1:	06                   	push   %es
c0001fd2:	0f a0                	push   %fs
c0001fd4:	0f a8                	push   %gs
c0001fd6:	60                   	pusha  
c0001fd7:	b0 20                	mov    $0x20,%al
c0001fd9:	e6 a0                	out    %al,$0xa0
c0001fdb:	e6 20                	out    %al,$0x20
c0001fdd:	6a 1a                	push   $0x1a
c0001fdf:	ff 15 a8 61 00 c0    	call   *0xc00061a8
c0001fe5:	83 c4 04             	add    $0x4,%esp
c0001fe8:	e9 c3 fc ff ff       	jmp    c0001cb0 <intr_exit>

c0001fed <intr0X1Bentry>:
c0001fed:	6a 00                	push   $0x0
c0001fef:	1e                   	push   %ds
c0001ff0:	06                   	push   %es
c0001ff1:	0f a0                	push   %fs
c0001ff3:	0f a8                	push   %gs
c0001ff5:	60                   	pusha  
c0001ff6:	b0 20                	mov    $0x20,%al
c0001ff8:	e6 a0                	out    %al,$0xa0
c0001ffa:	e6 20                	out    %al,$0x20
c0001ffc:	6a 1b                	push   $0x1b
c0001ffe:	ff 15 ac 61 00 c0    	call   *0xc00061ac
c0002004:	83 c4 04             	add    $0x4,%esp
c0002007:	e9 a4 fc ff ff       	jmp    c0001cb0 <intr_exit>

c000200c <intr0X1Centry>:
c000200c:	6a 00                	push   $0x0
c000200e:	1e                   	push   %ds
c000200f:	06                   	push   %es
c0002010:	0f a0                	push   %fs
c0002012:	0f a8                	push   %gs
c0002014:	60                   	pusha  
c0002015:	b0 20                	mov    $0x20,%al
c0002017:	e6 a0                	out    %al,$0xa0
c0002019:	e6 20                	out    %al,$0x20
c000201b:	6a 1c                	push   $0x1c
c000201d:	ff 15 b0 61 00 c0    	call   *0xc00061b0
c0002023:	83 c4 04             	add    $0x4,%esp
c0002026:	e9 85 fc ff ff       	jmp    c0001cb0 <intr_exit>

c000202b <intr0X1Dentry>:
c000202b:	6a 00                	push   $0x0
c000202d:	1e                   	push   %ds
c000202e:	06                   	push   %es
c000202f:	0f a0                	push   %fs
c0002031:	0f a8                	push   %gs
c0002033:	60                   	pusha  
c0002034:	b0 20                	mov    $0x20,%al
c0002036:	e6 a0                	out    %al,$0xa0
c0002038:	e6 20                	out    %al,$0x20
c000203a:	6a 1d                	push   $0x1d
c000203c:	ff 15 b4 61 00 c0    	call   *0xc00061b4
c0002042:	83 c4 04             	add    $0x4,%esp
c0002045:	e9 66 fc ff ff       	jmp    c0001cb0 <intr_exit>

c000204a <intr0X1Eentry>:
c000204a:	90                   	nop
c000204b:	1e                   	push   %ds
c000204c:	06                   	push   %es
c000204d:	0f a0                	push   %fs
c000204f:	0f a8                	push   %gs
c0002051:	60                   	pusha  
c0002052:	b0 20                	mov    $0x20,%al
c0002054:	e6 a0                	out    %al,$0xa0
c0002056:	e6 20                	out    %al,$0x20
c0002058:	6a 1e                	push   $0x1e
c000205a:	ff 15 b8 61 00 c0    	call   *0xc00061b8
c0002060:	83 c4 04             	add    $0x4,%esp
c0002063:	e9 48 fc ff ff       	jmp    c0001cb0 <intr_exit>

c0002068 <intr0X1Fentry>:
c0002068:	6a 00                	push   $0x0
c000206a:	1e                   	push   %ds
c000206b:	06                   	push   %es
c000206c:	0f a0                	push   %fs
c000206e:	0f a8                	push   %gs
c0002070:	60                   	pusha  
c0002071:	b0 20                	mov    $0x20,%al
c0002073:	e6 a0                	out    %al,$0xa0
c0002075:	e6 20                	out    %al,$0x20
c0002077:	6a 1f                	push   $0x1f
c0002079:	ff 15 bc 61 00 c0    	call   *0xc00061bc
c000207f:	83 c4 04             	add    $0x4,%esp
c0002082:	e9 29 fc ff ff       	jmp    c0001cb0 <intr_exit>

c0002087 <intr0X20entry>:
c0002087:	6a 00                	push   $0x0
c0002089:	1e                   	push   %ds
c000208a:	06                   	push   %es
c000208b:	0f a0                	push   %fs
c000208d:	0f a8                	push   %gs
c000208f:	60                   	pusha  
c0002090:	b0 20                	mov    $0x20,%al
c0002092:	e6 a0                	out    %al,$0xa0
c0002094:	e6 20                	out    %al,$0x20
c0002096:	6a 20                	push   $0x20
c0002098:	ff 15 c0 61 00 c0    	call   *0xc00061c0
c000209e:	83 c4 04             	add    $0x4,%esp
c00020a1:	e9 0a fc ff ff       	jmp    c0001cb0 <intr_exit>
c00020a6:	66 90                	xchg   %ax,%ax
c00020a8:	66 90                	xchg   %ax,%ax
c00020aa:	66 90                	xchg   %ax,%ax
c00020ac:	66 90                	xchg   %ax,%ax
c00020ae:	66 90                	xchg   %ax,%ax

c00020b0 <put_char>:
c00020b0:	55                   	push   %ebp
c00020b1:	89 e5                	mov    %esp,%ebp
c00020b3:	60                   	pusha  
c00020b4:	66 b8 18 00          	mov    $0x18,%ax
c00020b8:	8e e8                	mov    %eax,%gs
c00020ba:	66 ba d4 03          	mov    $0x3d4,%dx
c00020be:	b0 0e                	mov    $0xe,%al
c00020c0:	ee                   	out    %al,(%dx)
c00020c1:	66 ba d5 03          	mov    $0x3d5,%dx
c00020c5:	ec                   	in     (%dx),%al
c00020c6:	66 c1 e0 08          	shl    $0x8,%ax
c00020ca:	66 ba d4 03          	mov    $0x3d4,%dx
c00020ce:	b0 0f                	mov    $0xf,%al
c00020d0:	ee                   	out    %al,(%dx)
c00020d1:	66 ba d5 03          	mov    $0x3d5,%dx
c00020d5:	ec                   	in     (%dx),%al
c00020d6:	66 89 c3             	mov    %ax,%bx
c00020d9:	8b 45 08             	mov    0x8(%ebp),%eax
c00020dc:	3c 0d                	cmp    $0xd,%al
c00020de:	74 44                	je     c0002124 <put_char.is_carriage_return>
c00020e0:	3c 0a                	cmp    $0xa,%al
c00020e2:	74 52                	je     c0002136 <put_char.is_line_feed>
c00020e4:	3c 08                	cmp    $0x8,%al
c00020e6:	74 02                	je     c00020ea <put_char.is_backspace>
c00020e8:	eb 1f                	jmp    c0002109 <put_char.put_other>

c00020ea <put_char.is_backspace>:
c00020ea:	66 83 fb 00          	cmp    $0x0,%bx
c00020ee:	0f 84 90 00 00 00    	je     c0002184 <put_char.set_cursor>
c00020f4:	66 4b                	dec    %bx
c00020f6:	66 d1 e3             	shl    %bx
c00020f9:	65 67 c6 07 20       	movb   $0x20,%gs:(%bx)
c00020fe:	65 67 c6 47 01 07    	movb   $0x7,%gs:0x1(%bx)
c0002104:	66 d1 eb             	shr    %bx
c0002107:	eb 7b                	jmp    c0002184 <put_char.set_cursor>

c0002109 <put_char.put_other>:
c0002109:	66 d1 e3             	shl    %bx
c000210c:	65 67 88 07          	mov    %al,%gs:(%bx)
c0002110:	65 67 c6 47 01 07    	movb   $0x7,%gs:0x1(%bx)
c0002116:	66 d1 eb             	shr    %bx
c0002119:	66 43                	inc    %bx
c000211b:	66 81 fb d0 07       	cmp    $0x7d0,%bx
c0002120:	7c 62                	jl     c0002184 <put_char.set_cursor>
c0002122:	eb 2d                	jmp    c0002151 <put_char.flash_screen>

c0002124 <put_char.is_carriage_return>:
c0002124:	66 31 d2             	xor    %dx,%dx
c0002127:	66 89 d8             	mov    %bx,%ax
c000212a:	66 b9 50 00          	mov    $0x50,%cx
c000212e:	66 f7 f1             	div    %cx
c0002131:	66 29 d3             	sub    %dx,%bx
c0002134:	eb 4e                	jmp    c0002184 <put_char.set_cursor>

c0002136 <put_char.is_line_feed>:
c0002136:	66 31 d2             	xor    %dx,%dx
c0002139:	66 89 d8             	mov    %bx,%ax
c000213c:	66 b9 50 00          	mov    $0x50,%cx
c0002140:	66 f7 f1             	div    %cx
c0002143:	66 29 d3             	sub    %dx,%bx
c0002146:	66 83 c3 50          	add    $0x50,%bx
c000214a:	66 81 fb d0 07       	cmp    $0x7d0,%bx

c000214f <put_char.is_line_feed_end>:
c000214f:	7c 33                	jl     c0002184 <put_char.set_cursor>

c0002151 <put_char.flash_screen>:
c0002151:	bf 00 80 0b c0       	mov    $0xc00b8000,%edi
c0002156:	be a0 80 0b c0       	mov    $0xc00b80a0,%esi
c000215b:	b9 00 0f 00 00       	mov    $0xf00,%ecx
c0002160:	fc                   	cld    
c0002161:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0002163:	bb 00 0f 00 00       	mov    $0xf00,%ebx
c0002168:	b9 50 00 00 00       	mov    $0x50,%ecx
c000216d:	be 00 00 00 00       	mov    $0x0,%esi

c0002172 <put_char.clean_last_row>:
c0002172:	66 c7 84 73 00 80 0b 	movw   $0x720,-0x3ff48000(%ebx,%esi,2)
c0002179:	c0 20 07 
c000217c:	46                   	inc    %esi
c000217d:	e2 f3                	loop   c0002172 <put_char.clean_last_row>
c000217f:	bb 80 07 00 00       	mov    $0x780,%ebx

c0002184 <put_char.set_cursor>:
c0002184:	53                   	push   %ebx
c0002185:	e8 8a 00 00 00       	call   c0002214 <set_cursor>
c000218a:	83 c4 04             	add    $0x4,%esp

c000218d <put_char.put_char_end>:
c000218d:	61                   	popa   
c000218e:	89 ec                	mov    %ebp,%esp
c0002190:	5d                   	pop    %ebp
c0002191:	c3                   	ret    

c0002192 <put_str>:
c0002192:	55                   	push   %ebp
c0002193:	89 e5                	mov    %esp,%ebp
c0002195:	60                   	pusha  
c0002196:	8b 75 08             	mov    0x8(%ebp),%esi
c0002199:	31 c0                	xor    %eax,%eax

c000219b <put_str.goon>:
c000219b:	8a 06                	mov    (%esi),%al
c000219d:	3c 00                	cmp    $0x0,%al
c000219f:	74 0c                	je     c00021ad <put_str.str_end>
c00021a1:	50                   	push   %eax
c00021a2:	e8 09 ff ff ff       	call   c00020b0 <put_char>
c00021a7:	83 c4 04             	add    $0x4,%esp
c00021aa:	46                   	inc    %esi
c00021ab:	eb ee                	jmp    c000219b <put_str.goon>

c00021ad <put_str.str_end>:
c00021ad:	61                   	popa   
c00021ae:	89 ec                	mov    %ebp,%esp
c00021b0:	5d                   	pop    %ebp
c00021b1:	c3                   	ret    

c00021b2 <put_int>:
c00021b2:	55                   	push   %ebp
c00021b3:	89 e5                	mov    %esp,%ebp
c00021b5:	60                   	pusha  
c00021b6:	8b 45 08             	mov    0x8(%ebp),%eax
c00021b9:	89 c2                	mov    %eax,%edx
c00021bb:	bf 07 00 00 00       	mov    $0x7,%edi
c00021c0:	b9 08 00 00 00       	mov    $0x8,%ecx
c00021c5:	bb 90 60 00 c0       	mov    $0xc0006090,%ebx

c00021ca <put_int.int_print>:
c00021ca:	83 e2 0f             	and    $0xf,%edx
c00021cd:	80 fa 0a             	cmp    $0xa,%dl
c00021d0:	7d 05                	jge    c00021d7 <put_int.is_A2F>
c00021d2:	83 c2 30             	add    $0x30,%edx
c00021d5:	eb 06                	jmp    c00021dd <put_int.store>

c00021d7 <put_int.is_A2F>:
c00021d7:	83 ea 0a             	sub    $0xa,%edx
c00021da:	83 c2 41             	add    $0x41,%edx

c00021dd <put_int.store>:
c00021dd:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
c00021e0:	4f                   	dec    %edi
c00021e1:	c1 e8 04             	shr    $0x4,%eax
c00021e4:	89 c2                	mov    %eax,%edx
c00021e6:	e2 e2                	loop   c00021ca <put_int.int_print>
c00021e8:	47                   	inc    %edi

c00021e9 <put_int.skip_prefix_zero>:
c00021e9:	83 ff 09             	cmp    $0x9,%edi
c00021ec:	7d 0b                	jge    c00021f9 <put_int.full_zero>

c00021ee <put_int.go_on_skip>:
c00021ee:	8a 04 3b             	mov    (%ebx,%edi,1),%al
c00021f1:	47                   	inc    %edi
c00021f2:	3c 30                	cmp    $0x30,%al
c00021f4:	74 f3                	je     c00021e9 <put_int.skip_prefix_zero>
c00021f6:	4f                   	dec    %edi
c00021f7:	eb 02                	jmp    c00021fb <put_int.put_num>

c00021f9 <put_int.full_zero>:
c00021f9:	b1 30                	mov    $0x30,%cl

c00021fb <put_int.put_num>:
c00021fb:	50                   	push   %eax
c00021fc:	e8 af fe ff ff       	call   c00020b0 <put_char>
c0002201:	83 c4 04             	add    $0x4,%esp
c0002204:	83 ff 07             	cmp    $0x7,%edi
c0002207:	7d 06                	jge    c000220f <put_int.int_end>
c0002209:	47                   	inc    %edi
c000220a:	8a 04 3b             	mov    (%ebx,%edi,1),%al
c000220d:	eb ec                	jmp    c00021fb <put_int.put_num>

c000220f <put_int.int_end>:
c000220f:	61                   	popa   
c0002210:	89 ec                	mov    %ebp,%esp
c0002212:	5d                   	pop    %ebp
c0002213:	c3                   	ret    

c0002214 <set_cursor>:
c0002214:	55                   	push   %ebp
c0002215:	89 e5                	mov    %esp,%ebp
c0002217:	52                   	push   %edx
c0002218:	50                   	push   %eax
c0002219:	53                   	push   %ebx
c000221a:	8b 5d 08             	mov    0x8(%ebp),%ebx
c000221d:	66 ba d4 03          	mov    $0x3d4,%dx
c0002221:	b0 0e                	mov    $0xe,%al
c0002223:	ee                   	out    %al,(%dx)
c0002224:	66 ba d5 03          	mov    $0x3d5,%dx
c0002228:	88 f8                	mov    %bh,%al
c000222a:	ee                   	out    %al,(%dx)
c000222b:	66 ba d4 03          	mov    $0x3d4,%dx
c000222f:	b0 0f                	mov    $0xf,%al
c0002231:	ee                   	out    %al,(%dx)
c0002232:	66 ba d5 03          	mov    $0x3d5,%dx
c0002236:	88 d8                	mov    %bl,%al
c0002238:	ee                   	out    %al,(%dx)
c0002239:	5b                   	pop    %ebx
c000223a:	58                   	pop    %eax
c000223b:	5a                   	pop    %edx
c000223c:	89 ec                	mov    %ebp,%esp
c000223e:	5d                   	pop    %ebp
c000223f:	c3                   	ret    

c0002240 <panic_spin>:
c0002240:	55                   	push   %ebp
c0002241:	89 e5                	mov    %esp,%ebp
c0002243:	53                   	push   %ebx
c0002244:	83 ec 04             	sub    $0x4,%esp
c0002247:	e8 9c f3 ff ff       	call   c00015e8 <__x86.get_pc_thunk.bx>
c000224c:	81 c3 b4 3d 00 00    	add    $0x3db4,%ebx
c0002252:	e8 43 f8 ff ff       	call   c0001a9a <intr_disable>
c0002257:	83 ec 0c             	sub    $0xc,%esp
c000225a:	8d 83 23 e3 ff ff    	lea    -0x1cdd(%ebx),%eax
c0002260:	50                   	push   %eax
c0002261:	e8 2c ff ff ff       	call   c0002192 <put_str>
c0002266:	83 c4 10             	add    $0x10,%esp
c0002269:	83 ec 0c             	sub    $0xc,%esp
c000226c:	ff 75 08             	push   0x8(%ebp)
c000226f:	e8 1e ff ff ff       	call   c0002192 <put_str>
c0002274:	83 c4 10             	add    $0x10,%esp
c0002277:	83 ec 0c             	sub    $0xc,%esp
c000227a:	6a 0a                	push   $0xa
c000227c:	e8 2f fe ff ff       	call   c00020b0 <put_char>
c0002281:	83 c4 10             	add    $0x10,%esp
c0002284:	83 ec 0c             	sub    $0xc,%esp
c0002287:	8d 83 2d e3 ff ff    	lea    -0x1cd3(%ebx),%eax
c000228d:	50                   	push   %eax
c000228e:	e8 ff fe ff ff       	call   c0002192 <put_str>
c0002293:	83 c4 10             	add    $0x10,%esp
c0002296:	8b 45 0c             	mov    0xc(%ebp),%eax
c0002299:	83 ec 0c             	sub    $0xc,%esp
c000229c:	50                   	push   %eax
c000229d:	e8 10 ff ff ff       	call   c00021b2 <put_int>
c00022a2:	83 c4 10             	add    $0x10,%esp
c00022a5:	83 ec 0c             	sub    $0xc,%esp
c00022a8:	6a 0a                	push   $0xa
c00022aa:	e8 01 fe ff ff       	call   c00020b0 <put_char>
c00022af:	83 c4 10             	add    $0x10,%esp
c00022b2:	83 ec 0c             	sub    $0xc,%esp
c00022b5:	8d 83 35 e3 ff ff    	lea    -0x1ccb(%ebx),%eax
c00022bb:	50                   	push   %eax
c00022bc:	e8 d1 fe ff ff       	call   c0002192 <put_str>
c00022c1:	83 c4 10             	add    $0x10,%esp
c00022c4:	83 ec 0c             	sub    $0xc,%esp
c00022c7:	ff 75 10             	push   0x10(%ebp)
c00022ca:	e8 c3 fe ff ff       	call   c0002192 <put_str>
c00022cf:	83 c4 10             	add    $0x10,%esp
c00022d2:	83 ec 0c             	sub    $0xc,%esp
c00022d5:	6a 0a                	push   $0xa
c00022d7:	e8 d4 fd ff ff       	call   c00020b0 <put_char>
c00022dc:	83 c4 10             	add    $0x10,%esp
c00022df:	83 ec 0c             	sub    $0xc,%esp
c00022e2:	8d 83 3b e3 ff ff    	lea    -0x1cc5(%ebx),%eax
c00022e8:	50                   	push   %eax
c00022e9:	e8 a4 fe ff ff       	call   c0002192 <put_str>
c00022ee:	83 c4 10             	add    $0x10,%esp
c00022f1:	83 ec 0c             	sub    $0xc,%esp
c00022f4:	ff 75 14             	push   0x14(%ebp)
c00022f7:	e8 96 fe ff ff       	call   c0002192 <put_str>
c00022fc:	83 c4 10             	add    $0x10,%esp
c00022ff:	83 ec 0c             	sub    $0xc,%esp
c0002302:	6a 0a                	push   $0xa
c0002304:	e8 a7 fd ff ff       	call   c00020b0 <put_char>
c0002309:	83 c4 10             	add    $0x10,%esp
c000230c:	eb fe                	jmp    c000230c <panic_spin+0xcc>

c000230e <memset>:
c000230e:	55                   	push   %ebp
c000230f:	89 e5                	mov    %esp,%ebp
c0002311:	53                   	push   %ebx
c0002312:	83 ec 24             	sub    $0x24,%esp
c0002315:	e8 fe f7 ff ff       	call   c0001b18 <__x86.get_pc_thunk.ax>
c000231a:	05 e6 3c 00 00       	add    $0x3ce6,%eax
c000231f:	8b 55 0c             	mov    0xc(%ebp),%edx
c0002322:	88 55 e4             	mov    %dl,-0x1c(%ebp)
c0002325:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c0002329:	75 21                	jne    c000234c <memset+0x3e>
c000232b:	8d 90 48 e3 ff ff    	lea    -0x1cb8(%eax),%edx
c0002331:	52                   	push   %edx
c0002332:	8d 90 cc e3 ff ff    	lea    -0x1c34(%eax),%edx
c0002338:	52                   	push   %edx
c0002339:	6a 07                	push   $0x7
c000233b:	8d 90 54 e3 ff ff    	lea    -0x1cac(%eax),%edx
c0002341:	52                   	push   %edx
c0002342:	89 c3                	mov    %eax,%ebx
c0002344:	e8 f7 fe ff ff       	call   c0002240 <panic_spin>
c0002349:	83 c4 10             	add    $0x10,%esp
c000234c:	8b 45 08             	mov    0x8(%ebp),%eax
c000234f:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0002352:	eb 0f                	jmp    c0002363 <memset+0x55>
c0002354:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0002357:	8d 50 01             	lea    0x1(%eax),%edx
c000235a:	89 55 f4             	mov    %edx,-0xc(%ebp)
c000235d:	0f b6 55 e4          	movzbl -0x1c(%ebp),%edx
c0002361:	88 10                	mov    %dl,(%eax)
c0002363:	8b 45 10             	mov    0x10(%ebp),%eax
c0002366:	8d 50 ff             	lea    -0x1(%eax),%edx
c0002369:	89 55 10             	mov    %edx,0x10(%ebp)
c000236c:	85 c0                	test   %eax,%eax
c000236e:	75 e4                	jne    c0002354 <memset+0x46>
c0002370:	90                   	nop
c0002371:	90                   	nop
c0002372:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0002375:	c9                   	leave  
c0002376:	c3                   	ret    

c0002377 <memcpy>:
c0002377:	55                   	push   %ebp
c0002378:	89 e5                	mov    %esp,%ebp
c000237a:	53                   	push   %ebx
c000237b:	83 ec 14             	sub    $0x14,%esp
c000237e:	e8 95 f7 ff ff       	call   c0001b18 <__x86.get_pc_thunk.ax>
c0002383:	05 7d 3c 00 00       	add    $0x3c7d,%eax
c0002388:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c000238c:	74 06                	je     c0002394 <memcpy+0x1d>
c000238e:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c0002392:	75 21                	jne    c00023b5 <memcpy+0x3e>
c0002394:	8d 90 5d e3 ff ff    	lea    -0x1ca3(%eax),%edx
c000239a:	52                   	push   %edx
c000239b:	8d 90 d4 e3 ff ff    	lea    -0x1c2c(%eax),%edx
c00023a1:	52                   	push   %edx
c00023a2:	6a 12                	push   $0x12
c00023a4:	8d 90 54 e3 ff ff    	lea    -0x1cac(%eax),%edx
c00023aa:	52                   	push   %edx
c00023ab:	89 c3                	mov    %eax,%ebx
c00023ad:	e8 8e fe ff ff       	call   c0002240 <panic_spin>
c00023b2:	83 c4 10             	add    $0x10,%esp
c00023b5:	8b 45 08             	mov    0x8(%ebp),%eax
c00023b8:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00023bb:	8b 45 0c             	mov    0xc(%ebp),%eax
c00023be:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00023c1:	eb 17                	jmp    c00023da <memcpy+0x63>
c00023c3:	8b 55 f0             	mov    -0x10(%ebp),%edx
c00023c6:	8d 42 01             	lea    0x1(%edx),%eax
c00023c9:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00023cc:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00023cf:	8d 48 01             	lea    0x1(%eax),%ecx
c00023d2:	89 4d f4             	mov    %ecx,-0xc(%ebp)
c00023d5:	0f b6 12             	movzbl (%edx),%edx
c00023d8:	88 10                	mov    %dl,(%eax)
c00023da:	8b 45 10             	mov    0x10(%ebp),%eax
c00023dd:	8d 50 ff             	lea    -0x1(%eax),%edx
c00023e0:	89 55 10             	mov    %edx,0x10(%ebp)
c00023e3:	85 c0                	test   %eax,%eax
c00023e5:	75 dc                	jne    c00023c3 <memcpy+0x4c>
c00023e7:	90                   	nop
c00023e8:	90                   	nop
c00023e9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00023ec:	c9                   	leave  
c00023ed:	c3                   	ret    

c00023ee <memcmp>:
c00023ee:	55                   	push   %ebp
c00023ef:	89 e5                	mov    %esp,%ebp
c00023f1:	53                   	push   %ebx
c00023f2:	83 ec 14             	sub    $0x14,%esp
c00023f5:	e8 1e f7 ff ff       	call   c0001b18 <__x86.get_pc_thunk.ax>
c00023fa:	05 06 3c 00 00       	add    $0x3c06,%eax
c00023ff:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c0002403:	74 06                	je     c000240b <memcmp+0x1d>
c0002405:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c0002409:	75 21                	jne    c000242c <memcmp+0x3e>
c000240b:	8d 90 77 e3 ff ff    	lea    -0x1c89(%eax),%edx
c0002411:	52                   	push   %edx
c0002412:	8d 90 dc e3 ff ff    	lea    -0x1c24(%eax),%edx
c0002418:	52                   	push   %edx
c0002419:	6a 1e                	push   $0x1e
c000241b:	8d 90 54 e3 ff ff    	lea    -0x1cac(%eax),%edx
c0002421:	52                   	push   %edx
c0002422:	89 c3                	mov    %eax,%ebx
c0002424:	e8 17 fe ff ff       	call   c0002240 <panic_spin>
c0002429:	83 c4 10             	add    $0x10,%esp
c000242c:	8b 45 08             	mov    0x8(%ebp),%eax
c000242f:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0002432:	8b 45 0c             	mov    0xc(%ebp),%eax
c0002435:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0002438:	eb 36                	jmp    c0002470 <memcmp+0x82>
c000243a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000243d:	0f b6 10             	movzbl (%eax),%edx
c0002440:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0002443:	0f b6 00             	movzbl (%eax),%eax
c0002446:	38 c2                	cmp    %al,%dl
c0002448:	74 1e                	je     c0002468 <memcmp+0x7a>
c000244a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000244d:	0f b6 10             	movzbl (%eax),%edx
c0002450:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0002453:	0f b6 00             	movzbl (%eax),%eax
c0002456:	38 c2                	cmp    %al,%dl
c0002458:	76 07                	jbe    c0002461 <memcmp+0x73>
c000245a:	b8 01 00 00 00       	mov    $0x1,%eax
c000245f:	eb 21                	jmp    c0002482 <memcmp+0x94>
c0002461:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0002466:	eb 1a                	jmp    c0002482 <memcmp+0x94>
c0002468:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c000246c:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0002470:	8b 45 10             	mov    0x10(%ebp),%eax
c0002473:	8d 50 ff             	lea    -0x1(%eax),%edx
c0002476:	89 55 10             	mov    %edx,0x10(%ebp)
c0002479:	85 c0                	test   %eax,%eax
c000247b:	75 bd                	jne    c000243a <memcmp+0x4c>
c000247d:	b8 00 00 00 00       	mov    $0x0,%eax
c0002482:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0002485:	c9                   	leave  
c0002486:	c3                   	ret    

c0002487 <strcpy>:
c0002487:	55                   	push   %ebp
c0002488:	89 e5                	mov    %esp,%ebp
c000248a:	53                   	push   %ebx
c000248b:	83 ec 14             	sub    $0x14,%esp
c000248e:	e8 85 f6 ff ff       	call   c0001b18 <__x86.get_pc_thunk.ax>
c0002493:	05 6d 3b 00 00       	add    $0x3b6d,%eax
c0002498:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c000249c:	74 06                	je     c00024a4 <strcpy+0x1d>
c000249e:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c00024a2:	75 21                	jne    c00024c5 <strcpy+0x3e>
c00024a4:	8d 90 8a e3 ff ff    	lea    -0x1c76(%eax),%edx
c00024aa:	52                   	push   %edx
c00024ab:	8d 90 e4 e3 ff ff    	lea    -0x1c1c(%eax),%edx
c00024b1:	52                   	push   %edx
c00024b2:	6a 2f                	push   $0x2f
c00024b4:	8d 90 54 e3 ff ff    	lea    -0x1cac(%eax),%edx
c00024ba:	52                   	push   %edx
c00024bb:	89 c3                	mov    %eax,%ebx
c00024bd:	e8 7e fd ff ff       	call   c0002240 <panic_spin>
c00024c2:	83 c4 10             	add    $0x10,%esp
c00024c5:	8b 45 08             	mov    0x8(%ebp),%eax
c00024c8:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00024cb:	8b 45 0c             	mov    0xc(%ebp),%eax
c00024ce:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00024d1:	90                   	nop
c00024d2:	8b 55 f0             	mov    -0x10(%ebp),%edx
c00024d5:	8d 42 01             	lea    0x1(%edx),%eax
c00024d8:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00024db:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00024de:	8d 48 01             	lea    0x1(%eax),%ecx
c00024e1:	89 4d f4             	mov    %ecx,-0xc(%ebp)
c00024e4:	0f b6 12             	movzbl (%edx),%edx
c00024e7:	88 10                	mov    %dl,(%eax)
c00024e9:	0f b6 00             	movzbl (%eax),%eax
c00024ec:	84 c0                	test   %al,%al
c00024ee:	75 e2                	jne    c00024d2 <strcpy+0x4b>
c00024f0:	8b 45 08             	mov    0x8(%ebp),%eax
c00024f3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00024f6:	c9                   	leave  
c00024f7:	c3                   	ret    

c00024f8 <strlen>:
c00024f8:	55                   	push   %ebp
c00024f9:	89 e5                	mov    %esp,%ebp
c00024fb:	53                   	push   %ebx
c00024fc:	83 ec 14             	sub    $0x14,%esp
c00024ff:	e8 14 f6 ff ff       	call   c0001b18 <__x86.get_pc_thunk.ax>
c0002504:	05 fc 3a 00 00       	add    $0x3afc,%eax
c0002509:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c000250d:	75 21                	jne    c0002530 <strlen+0x38>
c000250f:	8d 90 a4 e3 ff ff    	lea    -0x1c5c(%eax),%edx
c0002515:	52                   	push   %edx
c0002516:	8d 90 ec e3 ff ff    	lea    -0x1c14(%eax),%edx
c000251c:	52                   	push   %edx
c000251d:	6a 38                	push   $0x38
c000251f:	8d 90 54 e3 ff ff    	lea    -0x1cac(%eax),%edx
c0002525:	52                   	push   %edx
c0002526:	89 c3                	mov    %eax,%ebx
c0002528:	e8 13 fd ff ff       	call   c0002240 <panic_spin>
c000252d:	83 c4 10             	add    $0x10,%esp
c0002530:	8b 45 08             	mov    0x8(%ebp),%eax
c0002533:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0002536:	90                   	nop
c0002537:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000253a:	8d 50 01             	lea    0x1(%eax),%edx
c000253d:	89 55 f4             	mov    %edx,-0xc(%ebp)
c0002540:	0f b6 00             	movzbl (%eax),%eax
c0002543:	84 c0                	test   %al,%al
c0002545:	75 f0                	jne    c0002537 <strlen+0x3f>
c0002547:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000254a:	2b 45 08             	sub    0x8(%ebp),%eax
c000254d:	83 e8 01             	sub    $0x1,%eax
c0002550:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0002553:	c9                   	leave  
c0002554:	c3                   	ret    

c0002555 <strcmp>:
c0002555:	55                   	push   %ebp
c0002556:	89 e5                	mov    %esp,%ebp
c0002558:	53                   	push   %ebx
c0002559:	83 ec 14             	sub    $0x14,%esp
c000255c:	e8 b7 f5 ff ff       	call   c0001b18 <__x86.get_pc_thunk.ax>
c0002561:	05 9f 3a 00 00       	add    $0x3a9f,%eax
c0002566:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c000256a:	74 06                	je     c0002572 <strcmp+0x1d>
c000256c:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c0002570:	75 21                	jne    c0002593 <strcmp+0x3e>
c0002572:	8d 90 b0 e3 ff ff    	lea    -0x1c50(%eax),%edx
c0002578:	52                   	push   %edx
c0002579:	8d 90 f4 e3 ff ff    	lea    -0x1c0c(%eax),%edx
c000257f:	52                   	push   %edx
c0002580:	6a 40                	push   $0x40
c0002582:	8d 90 54 e3 ff ff    	lea    -0x1cac(%eax),%edx
c0002588:	52                   	push   %edx
c0002589:	89 c3                	mov    %eax,%ebx
c000258b:	e8 b0 fc ff ff       	call   c0002240 <panic_spin>
c0002590:	83 c4 10             	add    $0x10,%esp
c0002593:	8b 45 08             	mov    0x8(%ebp),%eax
c0002596:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0002599:	8b 45 0c             	mov    0xc(%ebp),%eax
c000259c:	89 45 f0             	mov    %eax,-0x10(%ebp)
c000259f:	eb 36                	jmp    c00025d7 <strcmp+0x82>
c00025a1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00025a4:	0f b6 10             	movzbl (%eax),%edx
c00025a7:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00025aa:	0f b6 00             	movzbl (%eax),%eax
c00025ad:	38 c2                	cmp    %al,%dl
c00025af:	74 1e                	je     c00025cf <strcmp+0x7a>
c00025b1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00025b4:	0f b6 10             	movzbl (%eax),%edx
c00025b7:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00025ba:	0f b6 00             	movzbl (%eax),%eax
c00025bd:	38 c2                	cmp    %al,%dl
c00025bf:	76 07                	jbe    c00025c8 <strcmp+0x73>
c00025c1:	b8 01 00 00 00       	mov    $0x1,%eax
c00025c6:	eb 28                	jmp    c00025f0 <strcmp+0x9b>
c00025c8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c00025cd:	eb 21                	jmp    c00025f0 <strcmp+0x9b>
c00025cf:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c00025d3:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c00025d7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00025da:	0f b6 00             	movzbl (%eax),%eax
c00025dd:	84 c0                	test   %al,%al
c00025df:	74 0a                	je     c00025eb <strcmp+0x96>
c00025e1:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00025e4:	0f b6 00             	movzbl (%eax),%eax
c00025e7:	84 c0                	test   %al,%al
c00025e9:	75 b6                	jne    c00025a1 <strcmp+0x4c>
c00025eb:	b8 00 00 00 00       	mov    $0x0,%eax
c00025f0:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00025f3:	c9                   	leave  
c00025f4:	c3                   	ret    

c00025f5 <strchr>:
c00025f5:	55                   	push   %ebp
c00025f6:	89 e5                	mov    %esp,%ebp
c00025f8:	53                   	push   %ebx
c00025f9:	83 ec 24             	sub    $0x24,%esp
c00025fc:	e8 17 f5 ff ff       	call   c0001b18 <__x86.get_pc_thunk.ax>
c0002601:	05 ff 39 00 00       	add    $0x39ff,%eax
c0002606:	8b 55 0c             	mov    0xc(%ebp),%edx
c0002609:	88 55 e4             	mov    %dl,-0x1c(%ebp)
c000260c:	8b 55 08             	mov    0x8(%ebp),%edx
c000260f:	0f b6 12             	movzbl (%edx),%edx
c0002612:	84 d2                	test   %dl,%dl
c0002614:	75 21                	jne    c0002637 <strchr+0x42>
c0002616:	8d 90 c1 e3 ff ff    	lea    -0x1c3f(%eax),%edx
c000261c:	52                   	push   %edx
c000261d:	8d 90 fc e3 ff ff    	lea    -0x1c04(%eax),%edx
c0002623:	52                   	push   %edx
c0002624:	6a 51                	push   $0x51
c0002626:	8d 90 54 e3 ff ff    	lea    -0x1cac(%eax),%edx
c000262c:	52                   	push   %edx
c000262d:	89 c3                	mov    %eax,%ebx
c000262f:	e8 0c fc ff ff       	call   c0002240 <panic_spin>
c0002634:	83 c4 10             	add    $0x10,%esp
c0002637:	8b 45 08             	mov    0x8(%ebp),%eax
c000263a:	89 45 f4             	mov    %eax,-0xc(%ebp)
c000263d:	90                   	nop
c000263e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0002641:	0f b6 00             	movzbl (%eax),%eax
c0002644:	84 c0                	test   %al,%al
c0002646:	74 17                	je     c000265f <strchr+0x6a>
c0002648:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000264b:	8d 50 01             	lea    0x1(%eax),%edx
c000264e:	89 55 f4             	mov    %edx,-0xc(%ebp)
c0002651:	0f b6 00             	movzbl (%eax),%eax
c0002654:	0f b6 d0             	movzbl %al,%edx
c0002657:	0f be 45 e4          	movsbl -0x1c(%ebp),%eax
c000265b:	39 c2                	cmp    %eax,%edx
c000265d:	75 df                	jne    c000263e <strchr+0x49>
c000265f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0002662:	0f b6 00             	movzbl (%eax),%eax
c0002665:	84 c0                	test   %al,%al
c0002667:	75 07                	jne    c0002670 <strchr+0x7b>
c0002669:	b8 00 00 00 00       	mov    $0x0,%eax
c000266e:	eb 06                	jmp    c0002676 <strchr+0x81>
c0002670:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0002673:	83 e8 01             	sub    $0x1,%eax
c0002676:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0002679:	c9                   	leave  
c000267a:	c3                   	ret    

c000267b <strrchr>:
c000267b:	55                   	push   %ebp
c000267c:	89 e5                	mov    %esp,%ebp
c000267e:	53                   	push   %ebx
c000267f:	83 ec 24             	sub    $0x24,%esp
c0002682:	e8 91 f4 ff ff       	call   c0001b18 <__x86.get_pc_thunk.ax>
c0002687:	05 79 39 00 00       	add    $0x3979,%eax
c000268c:	8b 55 0c             	mov    0xc(%ebp),%edx
c000268f:	88 55 e4             	mov    %dl,-0x1c(%ebp)
c0002692:	8b 55 08             	mov    0x8(%ebp),%edx
c0002695:	0f b6 12             	movzbl (%edx),%edx
c0002698:	84 d2                	test   %dl,%dl
c000269a:	75 21                	jne    c00026bd <strrchr+0x42>
c000269c:	8d 90 c1 e3 ff ff    	lea    -0x1c3f(%eax),%edx
c00026a2:	52                   	push   %edx
c00026a3:	8d 90 04 e4 ff ff    	lea    -0x1bfc(%eax),%edx
c00026a9:	52                   	push   %edx
c00026aa:	6a 5e                	push   $0x5e
c00026ac:	8d 90 54 e3 ff ff    	lea    -0x1cac(%eax),%edx
c00026b2:	52                   	push   %edx
c00026b3:	89 c3                	mov    %eax,%ebx
c00026b5:	e8 86 fb ff ff       	call   c0002240 <panic_spin>
c00026ba:	83 c4 10             	add    $0x10,%esp
c00026bd:	8b 45 08             	mov    0x8(%ebp),%eax
c00026c0:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00026c3:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c00026ca:	eb 15                	jmp    c00026e1 <strrchr+0x66>
c00026cc:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00026cf:	0f b6 00             	movzbl (%eax),%eax
c00026d2:	38 45 e4             	cmp    %al,-0x1c(%ebp)
c00026d5:	75 06                	jne    c00026dd <strrchr+0x62>
c00026d7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00026da:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00026dd:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c00026e1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00026e4:	0f b6 00             	movzbl (%eax),%eax
c00026e7:	84 c0                	test   %al,%al
c00026e9:	75 e1                	jne    c00026cc <strrchr+0x51>
c00026eb:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00026ee:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00026f1:	c9                   	leave  
c00026f2:	c3                   	ret    

c00026f3 <strcat>:
c00026f3:	55                   	push   %ebp
c00026f4:	89 e5                	mov    %esp,%ebp
c00026f6:	53                   	push   %ebx
c00026f7:	83 ec 14             	sub    $0x14,%esp
c00026fa:	e8 19 f4 ff ff       	call   c0001b18 <__x86.get_pc_thunk.ax>
c00026ff:	05 01 39 00 00       	add    $0x3901,%eax
c0002704:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c0002708:	74 06                	je     c0002710 <strcat+0x1d>
c000270a:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c000270e:	75 21                	jne    c0002731 <strcat+0x3e>
c0002710:	8d 90 8a e3 ff ff    	lea    -0x1c76(%eax),%edx
c0002716:	52                   	push   %edx
c0002717:	8d 90 0c e4 ff ff    	lea    -0x1bf4(%eax),%edx
c000271d:	52                   	push   %edx
c000271e:	6a 70                	push   $0x70
c0002720:	8d 90 54 e3 ff ff    	lea    -0x1cac(%eax),%edx
c0002726:	52                   	push   %edx
c0002727:	89 c3                	mov    %eax,%ebx
c0002729:	e8 12 fb ff ff       	call   c0002240 <panic_spin>
c000272e:	83 c4 10             	add    $0x10,%esp
c0002731:	8b 45 08             	mov    0x8(%ebp),%eax
c0002734:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0002737:	8b 45 0c             	mov    0xc(%ebp),%eax
c000273a:	89 45 f0             	mov    %eax,-0x10(%ebp)
c000273d:	90                   	nop
c000273e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0002741:	8d 50 01             	lea    0x1(%eax),%edx
c0002744:	89 55 f4             	mov    %edx,-0xc(%ebp)
c0002747:	0f b6 00             	movzbl (%eax),%eax
c000274a:	84 c0                	test   %al,%al
c000274c:	75 f0                	jne    c000273e <strcat+0x4b>
c000274e:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
c0002752:	90                   	nop
c0002753:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0002756:	8d 42 01             	lea    0x1(%edx),%eax
c0002759:	89 45 f0             	mov    %eax,-0x10(%ebp)
c000275c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000275f:	8d 48 01             	lea    0x1(%eax),%ecx
c0002762:	89 4d f4             	mov    %ecx,-0xc(%ebp)
c0002765:	0f b6 12             	movzbl (%edx),%edx
c0002768:	88 10                	mov    %dl,(%eax)
c000276a:	0f b6 00             	movzbl (%eax),%eax
c000276d:	84 c0                	test   %al,%al
c000276f:	75 e2                	jne    c0002753 <strcat+0x60>
c0002771:	8b 45 08             	mov    0x8(%ebp),%eax
c0002774:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0002777:	c9                   	leave  
c0002778:	c3                   	ret    

c0002779 <strchrs>:
c0002779:	55                   	push   %ebp
c000277a:	89 e5                	mov    %esp,%ebp
c000277c:	53                   	push   %ebx
c000277d:	83 ec 24             	sub    $0x24,%esp
c0002780:	e8 93 f3 ff ff       	call   c0001b18 <__x86.get_pc_thunk.ax>
c0002785:	05 7b 38 00 00       	add    $0x387b,%eax
c000278a:	8b 55 0c             	mov    0xc(%ebp),%edx
c000278d:	88 55 e4             	mov    %dl,-0x1c(%ebp)
c0002790:	8b 55 08             	mov    0x8(%ebp),%edx
c0002793:	0f b6 12             	movzbl (%edx),%edx
c0002796:	84 d2                	test   %dl,%dl
c0002798:	75 21                	jne    c00027bb <strchrs+0x42>
c000279a:	8d 90 c1 e3 ff ff    	lea    -0x1c3f(%eax),%edx
c00027a0:	52                   	push   %edx
c00027a1:	8d 90 14 e4 ff ff    	lea    -0x1bec(%eax),%edx
c00027a7:	52                   	push   %edx
c00027a8:	6a 7c                	push   $0x7c
c00027aa:	8d 90 54 e3 ff ff    	lea    -0x1cac(%eax),%edx
c00027b0:	52                   	push   %edx
c00027b1:	89 c3                	mov    %eax,%ebx
c00027b3:	e8 88 fa ff ff       	call   c0002240 <panic_spin>
c00027b8:	83 c4 10             	add    $0x10,%esp
c00027bb:	8b 45 08             	mov    0x8(%ebp),%eax
c00027be:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00027c1:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c00027c8:	eb 13                	jmp    c00027dd <strchrs+0x64>
c00027ca:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00027cd:	0f b6 00             	movzbl (%eax),%eax
c00027d0:	38 45 e4             	cmp    %al,-0x1c(%ebp)
c00027d3:	75 04                	jne    c00027d9 <strchrs+0x60>
c00027d5:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c00027d9:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c00027dd:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00027e0:	0f b6 00             	movzbl (%eax),%eax
c00027e3:	84 c0                	test   %al,%al
c00027e5:	75 e3                	jne    c00027ca <strchrs+0x51>
c00027e7:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00027ea:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00027ed:	c9                   	leave  
c00027ee:	c3                   	ret    

c00027ef <get_vaddr>:
c00027ef:	55                   	push   %ebp
c00027f0:	89 e5                	mov    %esp,%ebp
c00027f2:	53                   	push   %ebx
c00027f3:	83 ec 14             	sub    $0x14,%esp
c00027f6:	e8 ed ed ff ff       	call   c00015e8 <__x86.get_pc_thunk.bx>
c00027fb:	81 c3 05 38 00 00    	add    $0x3805,%ebx
c0002801:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c0002808:	c7 45 ec ff ff ff ff 	movl   $0xffffffff,-0x14(%ebp)
c000280f:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
c0002813:	75 6d                	jne    c0002882 <get_vaddr+0x93>
c0002815:	83 ec 08             	sub    $0x8,%esp
c0002818:	ff 75 0c             	push   0xc(%ebp)
c000281b:	8d 83 ec 01 00 00    	lea    0x1ec(%ebx),%eax
c0002821:	50                   	push   %eax
c0002822:	e8 57 06 00 00       	call   c0002e7e <bitmap_scan>
c0002827:	83 c4 10             	add    $0x10,%esp
c000282a:	89 45 ec             	mov    %eax,-0x14(%ebp)
c000282d:	83 7d ec ff          	cmpl   $0xffffffff,-0x14(%ebp)
c0002831:	75 07                	jne    c000283a <get_vaddr+0x4b>
c0002833:	b8 00 00 00 00       	mov    $0x0,%eax
c0002838:	eb 48                	jmp    c0002882 <get_vaddr+0x93>
c000283a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0002841:	eb 21                	jmp    c0002864 <get_vaddr+0x75>
c0002843:	8b 55 ec             	mov    -0x14(%ebp),%edx
c0002846:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0002849:	01 d0                	add    %edx,%eax
c000284b:	83 ec 04             	sub    $0x4,%esp
c000284e:	6a 01                	push   $0x1
c0002850:	50                   	push   %eax
c0002851:	8d 83 ec 01 00 00    	lea    0x1ec(%ebx),%eax
c0002857:	50                   	push   %eax
c0002858:	e8 0f 07 00 00       	call   c0002f6c <set_bitmap>
c000285d:	83 c4 10             	add    $0x10,%esp
c0002860:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0002864:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0002867:	3b 45 0c             	cmp    0xc(%ebp),%eax
c000286a:	72 d7                	jb     c0002843 <get_vaddr+0x54>
c000286c:	8b 93 f4 01 00 00    	mov    0x1f4(%ebx),%edx
c0002872:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0002875:	c1 e0 0c             	shl    $0xc,%eax
c0002878:	01 d0                	add    %edx,%eax
c000287a:	89 45 f0             	mov    %eax,-0x10(%ebp)
c000287d:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0002880:	eb 00                	jmp    c0002882 <get_vaddr+0x93>
c0002882:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0002885:	c9                   	leave  
c0002886:	c3                   	ret    

c0002887 <get_pde_ptr>:
c0002887:	55                   	push   %ebp
c0002888:	89 e5                	mov    %esp,%ebp
c000288a:	83 ec 10             	sub    $0x10,%esp
c000288d:	e8 86 f2 ff ff       	call   c0001b18 <__x86.get_pc_thunk.ax>
c0002892:	05 6e 37 00 00       	add    $0x376e,%eax
c0002897:	8b 45 08             	mov    0x8(%ebp),%eax
c000289a:	c1 e8 16             	shr    $0x16,%eax
c000289d:	05 00 fc ff 3f       	add    $0x3ffffc00,%eax
c00028a2:	c1 e0 02             	shl    $0x2,%eax
c00028a5:	89 45 fc             	mov    %eax,-0x4(%ebp)
c00028a8:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00028ab:	c9                   	leave  
c00028ac:	c3                   	ret    

c00028ad <get_pte_ptr>:
c00028ad:	55                   	push   %ebp
c00028ae:	89 e5                	mov    %esp,%ebp
c00028b0:	83 ec 10             	sub    $0x10,%esp
c00028b3:	e8 60 f2 ff ff       	call   c0001b18 <__x86.get_pc_thunk.ax>
c00028b8:	05 48 37 00 00       	add    $0x3748,%eax
c00028bd:	8b 45 08             	mov    0x8(%ebp),%eax
c00028c0:	c1 e8 16             	shr    $0x16,%eax
c00028c3:	c1 e0 0c             	shl    $0xc,%eax
c00028c6:	89 c2                	mov    %eax,%edx
c00028c8:	8b 45 08             	mov    0x8(%ebp),%eax
c00028cb:	c1 e8 0c             	shr    $0xc,%eax
c00028ce:	25 ff 03 00 00       	and    $0x3ff,%eax
c00028d3:	c1 e0 02             	shl    $0x2,%eax
c00028d6:	01 d0                	add    %edx,%eax
c00028d8:	2d 00 00 40 00       	sub    $0x400000,%eax
c00028dd:	89 45 fc             	mov    %eax,-0x4(%ebp)
c00028e0:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00028e3:	c9                   	leave  
c00028e4:	c3                   	ret    

c00028e5 <palloc>:
c00028e5:	55                   	push   %ebp
c00028e6:	89 e5                	mov    %esp,%ebp
c00028e8:	53                   	push   %ebx
c00028e9:	83 ec 14             	sub    $0x14,%esp
c00028ec:	e8 f7 ec ff ff       	call   c00015e8 <__x86.get_pc_thunk.bx>
c00028f1:	81 c3 0f 37 00 00    	add    $0x370f,%ebx
c00028f7:	8b 45 08             	mov    0x8(%ebp),%eax
c00028fa:	83 ec 08             	sub    $0x8,%esp
c00028fd:	6a 01                	push   $0x1
c00028ff:	50                   	push   %eax
c0002900:	e8 79 05 00 00       	call   c0002e7e <bitmap_scan>
c0002905:	83 c4 10             	add    $0x10,%esp
c0002908:	89 45 f4             	mov    %eax,-0xc(%ebp)
c000290b:	83 7d f4 ff          	cmpl   $0xffffffff,-0xc(%ebp)
c000290f:	75 07                	jne    c0002918 <palloc+0x33>
c0002911:	b8 00 00 00 00       	mov    $0x0,%eax
c0002916:	eb 2b                	jmp    c0002943 <palloc+0x5e>
c0002918:	8b 55 f4             	mov    -0xc(%ebp),%edx
c000291b:	8b 45 08             	mov    0x8(%ebp),%eax
c000291e:	83 ec 04             	sub    $0x4,%esp
c0002921:	6a 01                	push   $0x1
c0002923:	52                   	push   %edx
c0002924:	50                   	push   %eax
c0002925:	e8 42 06 00 00       	call   c0002f6c <set_bitmap>
c000292a:	83 c4 10             	add    $0x10,%esp
c000292d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0002930:	c1 e0 0c             	shl    $0xc,%eax
c0002933:	89 c2                	mov    %eax,%edx
c0002935:	8b 45 08             	mov    0x8(%ebp),%eax
c0002938:	8b 40 08             	mov    0x8(%eax),%eax
c000293b:	01 d0                	add    %edx,%eax
c000293d:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0002940:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0002943:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0002946:	c9                   	leave  
c0002947:	c3                   	ret    

c0002948 <page_table_add>:
c0002948:	55                   	push   %ebp
c0002949:	89 e5                	mov    %esp,%ebp
c000294b:	53                   	push   %ebx
c000294c:	83 ec 24             	sub    $0x24,%esp
c000294f:	e8 94 ec ff ff       	call   c00015e8 <__x86.get_pc_thunk.bx>
c0002954:	81 c3 ac 36 00 00    	add    $0x36ac,%ebx
c000295a:	8b 45 08             	mov    0x8(%ebp),%eax
c000295d:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0002960:	8b 45 0c             	mov    0xc(%ebp),%eax
c0002963:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0002966:	ff 75 f4             	push   -0xc(%ebp)
c0002969:	e8 19 ff ff ff       	call   c0002887 <get_pde_ptr>
c000296e:	83 c4 04             	add    $0x4,%esp
c0002971:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0002974:	ff 75 f4             	push   -0xc(%ebp)
c0002977:	e8 31 ff ff ff       	call   c00028ad <get_pte_ptr>
c000297c:	83 c4 04             	add    $0x4,%esp
c000297f:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0002982:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0002985:	8b 00                	mov    (%eax),%eax
c0002987:	83 e0 01             	and    $0x1,%eax
c000298a:	85 c0                	test   %eax,%eax
c000298c:	74 77                	je     c0002a05 <page_table_add+0xbd>
c000298e:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0002991:	8b 00                	mov    (%eax),%eax
c0002993:	83 e0 01             	and    $0x1,%eax
c0002996:	85 c0                	test   %eax,%eax
c0002998:	74 1f                	je     c00029b9 <page_table_add+0x71>
c000299a:	8d 83 1c e4 ff ff    	lea    -0x1be4(%ebx),%eax
c00029a0:	50                   	push   %eax
c00029a1:	8d 83 f0 e4 ff ff    	lea    -0x1b10(%ebx),%eax
c00029a7:	50                   	push   %eax
c00029a8:	6a 62                	push   $0x62
c00029aa:	8d 83 29 e4 ff ff    	lea    -0x1bd7(%ebx),%eax
c00029b0:	50                   	push   %eax
c00029b1:	e8 8a f8 ff ff       	call   c0002240 <panic_spin>
c00029b6:	83 c4 10             	add    $0x10,%esp
c00029b9:	8b 45 e8             	mov    -0x18(%ebp),%eax
c00029bc:	8b 00                	mov    (%eax),%eax
c00029be:	83 e0 01             	and    $0x1,%eax
c00029c1:	85 c0                	test   %eax,%eax
c00029c3:	75 12                	jne    c00029d7 <page_table_add+0x8f>
c00029c5:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00029c8:	83 c8 07             	or     $0x7,%eax
c00029cb:	89 c2                	mov    %eax,%edx
c00029cd:	8b 45 e8             	mov    -0x18(%ebp),%eax
c00029d0:	89 10                	mov    %edx,(%eax)
c00029d2:	e9 a3 00 00 00       	jmp    c0002a7a <page_table_add+0x132>
c00029d7:	8d 83 32 e4 ff ff    	lea    -0x1bce(%ebx),%eax
c00029dd:	50                   	push   %eax
c00029de:	8d 83 f0 e4 ff ff    	lea    -0x1b10(%ebx),%eax
c00029e4:	50                   	push   %eax
c00029e5:	6a 6a                	push   $0x6a
c00029e7:	8d 83 29 e4 ff ff    	lea    -0x1bd7(%ebx),%eax
c00029ed:	50                   	push   %eax
c00029ee:	e8 4d f8 ff ff       	call   c0002240 <panic_spin>
c00029f3:	83 c4 10             	add    $0x10,%esp
c00029f6:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00029f9:	83 c8 07             	or     $0x7,%eax
c00029fc:	89 c2                	mov    %eax,%edx
c00029fe:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0002a01:	89 10                	mov    %edx,(%eax)
c0002a03:	eb 75                	jmp    c0002a7a <page_table_add+0x132>
c0002a05:	83 ec 0c             	sub    $0xc,%esp
c0002a08:	8d 83 dc 01 00 00    	lea    0x1dc(%ebx),%eax
c0002a0e:	50                   	push   %eax
c0002a0f:	e8 d1 fe ff ff       	call   c00028e5 <palloc>
c0002a14:	83 c4 10             	add    $0x10,%esp
c0002a17:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0002a1a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0002a1d:	83 c8 07             	or     $0x7,%eax
c0002a20:	89 c2                	mov    %eax,%edx
c0002a22:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0002a25:	89 10                	mov    %edx,(%eax)
c0002a27:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0002a2a:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0002a2f:	83 ec 04             	sub    $0x4,%esp
c0002a32:	68 00 10 00 00       	push   $0x1000
c0002a37:	6a 00                	push   $0x0
c0002a39:	50                   	push   %eax
c0002a3a:	e8 cf f8 ff ff       	call   c000230e <memset>
c0002a3f:	83 c4 10             	add    $0x10,%esp
c0002a42:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0002a45:	8b 00                	mov    (%eax),%eax
c0002a47:	83 e0 01             	and    $0x1,%eax
c0002a4a:	85 c0                	test   %eax,%eax
c0002a4c:	74 1f                	je     c0002a6d <page_table_add+0x125>
c0002a4e:	8d 83 1c e4 ff ff    	lea    -0x1be4(%ebx),%eax
c0002a54:	50                   	push   %eax
c0002a55:	8d 83 f0 e4 ff ff    	lea    -0x1b10(%ebx),%eax
c0002a5b:	50                   	push   %eax
c0002a5c:	6a 77                	push   $0x77
c0002a5e:	8d 83 29 e4 ff ff    	lea    -0x1bd7(%ebx),%eax
c0002a64:	50                   	push   %eax
c0002a65:	e8 d6 f7 ff ff       	call   c0002240 <panic_spin>
c0002a6a:	83 c4 10             	add    $0x10,%esp
c0002a6d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0002a70:	83 c8 07             	or     $0x7,%eax
c0002a73:	89 c2                	mov    %eax,%edx
c0002a75:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0002a78:	89 10                	mov    %edx,(%eax)
c0002a7a:	90                   	nop
c0002a7b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0002a7e:	c9                   	leave  
c0002a7f:	c3                   	ret    

c0002a80 <malloc_page>:
c0002a80:	55                   	push   %ebp
c0002a81:	89 e5                	mov    %esp,%ebp
c0002a83:	53                   	push   %ebx
c0002a84:	83 ec 14             	sub    $0x14,%esp
c0002a87:	e8 5c eb ff ff       	call   c00015e8 <__x86.get_pc_thunk.bx>
c0002a8c:	81 c3 74 35 00 00    	add    $0x3574,%ebx
c0002a92:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c0002a96:	74 09                	je     c0002aa1 <malloc_page+0x21>
c0002a98:	81 7d 0c ff 0e 00 00 	cmpl   $0xeff,0xc(%ebp)
c0002a9f:	76 22                	jbe    c0002ac3 <malloc_page+0x43>
c0002aa1:	8d 83 3d e4 ff ff    	lea    -0x1bc3(%ebx),%eax
c0002aa7:	50                   	push   %eax
c0002aa8:	8d 83 00 e5 ff ff    	lea    -0x1b00(%ebx),%eax
c0002aae:	50                   	push   %eax
c0002aaf:	68 82 00 00 00       	push   $0x82
c0002ab4:	8d 83 29 e4 ff ff    	lea    -0x1bd7(%ebx),%eax
c0002aba:	50                   	push   %eax
c0002abb:	e8 80 f7 ff ff       	call   c0002240 <panic_spin>
c0002ac0:	83 c4 10             	add    $0x10,%esp
c0002ac3:	83 ec 08             	sub    $0x8,%esp
c0002ac6:	ff 75 0c             	push   0xc(%ebp)
c0002ac9:	ff 75 08             	push   0x8(%ebp)
c0002acc:	e8 1e fd ff ff       	call   c00027ef <get_vaddr>
c0002ad1:	83 c4 10             	add    $0x10,%esp
c0002ad4:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0002ad7:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c0002adb:	75 07                	jne    c0002ae4 <malloc_page+0x64>
c0002add:	b8 00 00 00 00       	mov    $0x0,%eax
c0002ae2:	eb 65                	jmp    c0002b49 <malloc_page+0xc9>
c0002ae4:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0002ae7:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0002aea:	eb 4d                	jmp    c0002b39 <malloc_page+0xb9>
c0002aec:	8b 45 08             	mov    0x8(%ebp),%eax
c0002aef:	83 e0 01             	and    $0x1,%eax
c0002af2:	85 c0                	test   %eax,%eax
c0002af4:	74 08                	je     c0002afe <malloc_page+0x7e>
c0002af6:	8d 83 dc 01 00 00    	lea    0x1dc(%ebx),%eax
c0002afc:	eb 06                	jmp    c0002b04 <malloc_page+0x84>
c0002afe:	8d 83 cc 01 00 00    	lea    0x1cc(%ebx),%eax
c0002b04:	83 ec 0c             	sub    $0xc,%esp
c0002b07:	50                   	push   %eax
c0002b08:	e8 d8 fd ff ff       	call   c00028e5 <palloc>
c0002b0d:	83 c4 10             	add    $0x10,%esp
c0002b10:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0002b13:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c0002b17:	75 07                	jne    c0002b20 <malloc_page+0xa0>
c0002b19:	b8 00 00 00 00       	mov    $0x0,%eax
c0002b1e:	eb 29                	jmp    c0002b49 <malloc_page+0xc9>
c0002b20:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0002b23:	83 ec 08             	sub    $0x8,%esp
c0002b26:	ff 75 ec             	push   -0x14(%ebp)
c0002b29:	50                   	push   %eax
c0002b2a:	e8 19 fe ff ff       	call   c0002948 <page_table_add>
c0002b2f:	83 c4 10             	add    $0x10,%esp
c0002b32:	81 45 f4 00 10 00 00 	addl   $0x1000,-0xc(%ebp)
c0002b39:	8b 45 0c             	mov    0xc(%ebp),%eax
c0002b3c:	8d 50 ff             	lea    -0x1(%eax),%edx
c0002b3f:	89 55 0c             	mov    %edx,0xc(%ebp)
c0002b42:	85 c0                	test   %eax,%eax
c0002b44:	75 a6                	jne    c0002aec <malloc_page+0x6c>
c0002b46:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0002b49:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0002b4c:	c9                   	leave  
c0002b4d:	c3                   	ret    

c0002b4e <get_kernel_page>:
c0002b4e:	55                   	push   %ebp
c0002b4f:	89 e5                	mov    %esp,%ebp
c0002b51:	53                   	push   %ebx
c0002b52:	83 ec 14             	sub    $0x14,%esp
c0002b55:	e8 8e ea ff ff       	call   c00015e8 <__x86.get_pc_thunk.bx>
c0002b5a:	81 c3 a6 34 00 00    	add    $0x34a6,%ebx
c0002b60:	83 ec 08             	sub    $0x8,%esp
c0002b63:	ff 75 08             	push   0x8(%ebp)
c0002b66:	6a 01                	push   $0x1
c0002b68:	e8 13 ff ff ff       	call   c0002a80 <malloc_page>
c0002b6d:	83 c4 10             	add    $0x10,%esp
c0002b70:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0002b73:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0002b77:	75 07                	jne    c0002b80 <get_kernel_page+0x32>
c0002b79:	b8 00 00 00 00       	mov    $0x0,%eax
c0002b7e:	eb 1a                	jmp    c0002b9a <get_kernel_page+0x4c>
c0002b80:	8b 45 08             	mov    0x8(%ebp),%eax
c0002b83:	c1 e0 0c             	shl    $0xc,%eax
c0002b86:	83 ec 04             	sub    $0x4,%esp
c0002b89:	50                   	push   %eax
c0002b8a:	6a 00                	push   $0x0
c0002b8c:	ff 75 f4             	push   -0xc(%ebp)
c0002b8f:	e8 7a f7 ff ff       	call   c000230e <memset>
c0002b94:	83 c4 10             	add    $0x10,%esp
c0002b97:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0002b9a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0002b9d:	c9                   	leave  
c0002b9e:	c3                   	ret    

c0002b9f <init_mem_pool>:
c0002b9f:	55                   	push   %ebp
c0002ba0:	89 e5                	mov    %esp,%ebp
c0002ba2:	53                   	push   %ebx
c0002ba3:	83 ec 34             	sub    $0x34,%esp
c0002ba6:	e8 3d ea ff ff       	call   c00015e8 <__x86.get_pc_thunk.bx>
c0002bab:	81 c3 55 34 00 00    	add    $0x3455,%ebx
c0002bb1:	c7 45 f4 00 00 10 00 	movl   $0x100000,-0xc(%ebp)
c0002bb8:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0002bbb:	05 00 00 10 00       	add    $0x100000,%eax
c0002bc0:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0002bc3:	8b 45 08             	mov    0x8(%ebp),%eax
c0002bc6:	2b 45 f0             	sub    -0x10(%ebp),%eax
c0002bc9:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0002bcc:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0002bcf:	c1 e8 0c             	shr    $0xc,%eax
c0002bd2:	66 89 45 ea          	mov    %ax,-0x16(%ebp)
c0002bd6:	0f b7 45 ea          	movzwl -0x16(%ebp),%eax
c0002bda:	66 d1 e8             	shr    %ax
c0002bdd:	66 89 45 e8          	mov    %ax,-0x18(%ebp)
c0002be1:	0f b7 45 ea          	movzwl -0x16(%ebp),%eax
c0002be5:	66 2b 45 e8          	sub    -0x18(%ebp),%ax
c0002be9:	66 89 45 e6          	mov    %ax,-0x1a(%ebp)
c0002bed:	0f b7 45 e8          	movzwl -0x18(%ebp),%eax
c0002bf1:	66 c1 e8 03          	shr    $0x3,%ax
c0002bf5:	0f b7 c0             	movzwl %ax,%eax
c0002bf8:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0002bfb:	0f b7 45 e6          	movzwl -0x1a(%ebp),%eax
c0002bff:	66 c1 e8 03          	shr    $0x3,%ax
c0002c03:	0f b7 c0             	movzwl %ax,%eax
c0002c06:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0002c09:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0002c0c:	89 45 d8             	mov    %eax,-0x28(%ebp)
c0002c0f:	0f b7 45 e8          	movzwl -0x18(%ebp),%eax
c0002c13:	c1 e0 0c             	shl    $0xc,%eax
c0002c16:	89 c2                	mov    %eax,%edx
c0002c18:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0002c1b:	01 d0                	add    %edx,%eax
c0002c1d:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0002c20:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0002c23:	89 83 e4 01 00 00    	mov    %eax,0x1e4(%ebx)
c0002c29:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0002c2c:	89 83 d4 01 00 00    	mov    %eax,0x1d4(%ebx)
c0002c32:	0f b7 45 e8          	movzwl -0x18(%ebp),%eax
c0002c36:	c1 e0 0c             	shl    $0xc,%eax
c0002c39:	89 83 e8 01 00 00    	mov    %eax,0x1e8(%ebx)
c0002c3f:	0f b7 45 e6          	movzwl -0x1a(%ebp),%eax
c0002c43:	c1 e0 0c             	shl    $0xc,%eax
c0002c46:	89 83 d8 01 00 00    	mov    %eax,0x1d8(%ebx)
c0002c4c:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0002c4f:	89 83 dc 01 00 00    	mov    %eax,0x1dc(%ebx)
c0002c55:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0002c58:	89 83 cc 01 00 00    	mov    %eax,0x1cc(%ebx)
c0002c5e:	c7 83 e0 01 00 00 00 	movl   $0xc009a000,0x1e0(%ebx)
c0002c65:	a0 09 c0 
c0002c68:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0002c6b:	2d 00 60 f6 3f       	sub    $0x3ff66000,%eax
c0002c70:	89 83 d0 01 00 00    	mov    %eax,0x1d0(%ebx)
c0002c76:	83 ec 0c             	sub    $0xc,%esp
c0002c79:	8d 83 53 e4 ff ff    	lea    -0x1bad(%ebx),%eax
c0002c7f:	50                   	push   %eax
c0002c80:	e8 0d f5 ff ff       	call   c0002192 <put_str>
c0002c85:	83 c4 10             	add    $0x10,%esp
c0002c88:	8b 83 e0 01 00 00    	mov    0x1e0(%ebx),%eax
c0002c8e:	83 ec 0c             	sub    $0xc,%esp
c0002c91:	50                   	push   %eax
c0002c92:	e8 1b f5 ff ff       	call   c00021b2 <put_int>
c0002c97:	83 c4 10             	add    $0x10,%esp
c0002c9a:	83 ec 0c             	sub    $0xc,%esp
c0002c9d:	6a 0a                	push   $0xa
c0002c9f:	e8 0c f4 ff ff       	call   c00020b0 <put_char>
c0002ca4:	83 c4 10             	add    $0x10,%esp
c0002ca7:	83 ec 0c             	sub    $0xc,%esp
c0002caa:	8d 83 6d e4 ff ff    	lea    -0x1b93(%ebx),%eax
c0002cb0:	50                   	push   %eax
c0002cb1:	e8 dc f4 ff ff       	call   c0002192 <put_str>
c0002cb6:	83 c4 10             	add    $0x10,%esp
c0002cb9:	8b 83 e4 01 00 00    	mov    0x1e4(%ebx),%eax
c0002cbf:	83 ec 0c             	sub    $0xc,%esp
c0002cc2:	50                   	push   %eax
c0002cc3:	e8 ea f4 ff ff       	call   c00021b2 <put_int>
c0002cc8:	83 c4 10             	add    $0x10,%esp
c0002ccb:	83 ec 0c             	sub    $0xc,%esp
c0002cce:	6a 0a                	push   $0xa
c0002cd0:	e8 db f3 ff ff       	call   c00020b0 <put_char>
c0002cd5:	83 c4 10             	add    $0x10,%esp
c0002cd8:	83 ec 0c             	sub    $0xc,%esp
c0002cdb:	8d 83 89 e4 ff ff    	lea    -0x1b77(%ebx),%eax
c0002ce1:	50                   	push   %eax
c0002ce2:	e8 ab f4 ff ff       	call   c0002192 <put_str>
c0002ce7:	83 c4 10             	add    $0x10,%esp
c0002cea:	8b 83 d0 01 00 00    	mov    0x1d0(%ebx),%eax
c0002cf0:	83 ec 0c             	sub    $0xc,%esp
c0002cf3:	50                   	push   %eax
c0002cf4:	e8 b9 f4 ff ff       	call   c00021b2 <put_int>
c0002cf9:	83 c4 10             	add    $0x10,%esp
c0002cfc:	83 ec 0c             	sub    $0xc,%esp
c0002cff:	6a 0a                	push   $0xa
c0002d01:	e8 aa f3 ff ff       	call   c00020b0 <put_char>
c0002d06:	83 c4 10             	add    $0x10,%esp
c0002d09:	83 ec 0c             	sub    $0xc,%esp
c0002d0c:	8d 83 a1 e4 ff ff    	lea    -0x1b5f(%ebx),%eax
c0002d12:	50                   	push   %eax
c0002d13:	e8 7a f4 ff ff       	call   c0002192 <put_str>
c0002d18:	83 c4 10             	add    $0x10,%esp
c0002d1b:	8b 83 d4 01 00 00    	mov    0x1d4(%ebx),%eax
c0002d21:	83 ec 0c             	sub    $0xc,%esp
c0002d24:	50                   	push   %eax
c0002d25:	e8 88 f4 ff ff       	call   c00021b2 <put_int>
c0002d2a:	83 c4 10             	add    $0x10,%esp
c0002d2d:	83 ec 0c             	sub    $0xc,%esp
c0002d30:	6a 0a                	push   $0xa
c0002d32:	e8 79 f3 ff ff       	call   c00020b0 <put_char>
c0002d37:	83 c4 10             	add    $0x10,%esp
c0002d3a:	83 ec 0c             	sub    $0xc,%esp
c0002d3d:	8d 83 dc 01 00 00    	lea    0x1dc(%ebx),%eax
c0002d43:	50                   	push   %eax
c0002d44:	e8 b9 00 00 00       	call   c0002e02 <init_bitmap>
c0002d49:	83 c4 10             	add    $0x10,%esp
c0002d4c:	83 ec 0c             	sub    $0xc,%esp
c0002d4f:	8d 83 cc 01 00 00    	lea    0x1cc(%ebx),%eax
c0002d55:	50                   	push   %eax
c0002d56:	e8 a7 00 00 00       	call   c0002e02 <init_bitmap>
c0002d5b:	83 c4 10             	add    $0x10,%esp
c0002d5e:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0002d61:	89 83 ec 01 00 00    	mov    %eax,0x1ec(%ebx)
c0002d67:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0002d6a:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0002d6d:	01 d0                	add    %edx,%eax
c0002d6f:	2d 00 60 f6 3f       	sub    $0x3ff66000,%eax
c0002d74:	89 83 f0 01 00 00    	mov    %eax,0x1f0(%ebx)
c0002d7a:	c7 83 f4 01 00 00 00 	movl   $0xc0100000,0x1f4(%ebx)
c0002d81:	00 10 c0 
c0002d84:	83 ec 0c             	sub    $0xc,%esp
c0002d87:	8d 83 ec 01 00 00    	lea    0x1ec(%ebx),%eax
c0002d8d:	50                   	push   %eax
c0002d8e:	e8 6f 00 00 00       	call   c0002e02 <init_bitmap>
c0002d93:	83 c4 10             	add    $0x10,%esp
c0002d96:	83 ec 0c             	sub    $0xc,%esp
c0002d99:	8d 83 bb e4 ff ff    	lea    -0x1b45(%ebx),%eax
c0002d9f:	50                   	push   %eax
c0002da0:	e8 ed f3 ff ff       	call   c0002192 <put_str>
c0002da5:	83 c4 10             	add    $0x10,%esp
c0002da8:	90                   	nop
c0002da9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0002dac:	c9                   	leave  
c0002dad:	c3                   	ret    

c0002dae <init_mem>:
c0002dae:	55                   	push   %ebp
c0002daf:	89 e5                	mov    %esp,%ebp
c0002db1:	53                   	push   %ebx
c0002db2:	83 ec 14             	sub    $0x14,%esp
c0002db5:	e8 2e e8 ff ff       	call   c00015e8 <__x86.get_pc_thunk.bx>
c0002dba:	81 c3 46 32 00 00    	add    $0x3246,%ebx
c0002dc0:	83 ec 0c             	sub    $0xc,%esp
c0002dc3:	8d 83 ce e4 ff ff    	lea    -0x1b32(%ebx),%eax
c0002dc9:	50                   	push   %eax
c0002dca:	e8 c3 f3 ff ff       	call   c0002192 <put_str>
c0002dcf:	83 c4 10             	add    $0x10,%esp
c0002dd2:	b8 00 0b 00 00       	mov    $0xb00,%eax
c0002dd7:	8b 00                	mov    (%eax),%eax
c0002dd9:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0002ddc:	83 ec 0c             	sub    $0xc,%esp
c0002ddf:	ff 75 f4             	push   -0xc(%ebp)
c0002de2:	e8 b8 fd ff ff       	call   c0002b9f <init_mem_pool>
c0002de7:	83 c4 10             	add    $0x10,%esp
c0002dea:	83 ec 0c             	sub    $0xc,%esp
c0002ded:	8d 83 de e4 ff ff    	lea    -0x1b22(%ebx),%eax
c0002df3:	50                   	push   %eax
c0002df4:	e8 99 f3 ff ff       	call   c0002192 <put_str>
c0002df9:	83 c4 10             	add    $0x10,%esp
c0002dfc:	90                   	nop
c0002dfd:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0002e00:	c9                   	leave  
c0002e01:	c3                   	ret    

c0002e02 <init_bitmap>:
c0002e02:	55                   	push   %ebp
c0002e03:	89 e5                	mov    %esp,%ebp
c0002e05:	53                   	push   %ebx
c0002e06:	83 ec 04             	sub    $0x4,%esp
c0002e09:	e8 0a ed ff ff       	call   c0001b18 <__x86.get_pc_thunk.ax>
c0002e0e:	05 f2 31 00 00       	add    $0x31f2,%eax
c0002e13:	8b 55 08             	mov    0x8(%ebp),%edx
c0002e16:	8b 0a                	mov    (%edx),%ecx
c0002e18:	8b 55 08             	mov    0x8(%ebp),%edx
c0002e1b:	8b 52 04             	mov    0x4(%edx),%edx
c0002e1e:	83 ec 04             	sub    $0x4,%esp
c0002e21:	51                   	push   %ecx
c0002e22:	6a 00                	push   $0x0
c0002e24:	52                   	push   %edx
c0002e25:	89 c3                	mov    %eax,%ebx
c0002e27:	e8 e2 f4 ff ff       	call   c000230e <memset>
c0002e2c:	83 c4 10             	add    $0x10,%esp
c0002e2f:	90                   	nop
c0002e30:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0002e33:	c9                   	leave  
c0002e34:	c3                   	ret    

c0002e35 <test_bitmap_scan>:
c0002e35:	55                   	push   %ebp
c0002e36:	89 e5                	mov    %esp,%ebp
c0002e38:	53                   	push   %ebx
c0002e39:	83 ec 10             	sub    $0x10,%esp
c0002e3c:	e8 d7 ec ff ff       	call   c0001b18 <__x86.get_pc_thunk.ax>
c0002e41:	05 bf 31 00 00       	add    $0x31bf,%eax
c0002e46:	8b 45 0c             	mov    0xc(%ebp),%eax
c0002e49:	c1 e8 03             	shr    $0x3,%eax
c0002e4c:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0002e4f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0002e52:	83 e0 07             	and    $0x7,%eax
c0002e55:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0002e58:	8b 45 08             	mov    0x8(%ebp),%eax
c0002e5b:	8b 50 04             	mov    0x4(%eax),%edx
c0002e5e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0002e61:	01 d0                	add    %edx,%eax
c0002e63:	0f b6 00             	movzbl (%eax),%eax
c0002e66:	0f b6 d0             	movzbl %al,%edx
c0002e69:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0002e6c:	bb 01 00 00 00       	mov    $0x1,%ebx
c0002e71:	89 c1                	mov    %eax,%ecx
c0002e73:	d3 e3                	shl    %cl,%ebx
c0002e75:	89 d8                	mov    %ebx,%eax
c0002e77:	21 d0                	and    %edx,%eax
c0002e79:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0002e7c:	c9                   	leave  
c0002e7d:	c3                   	ret    

c0002e7e <bitmap_scan>:
c0002e7e:	55                   	push   %ebp
c0002e7f:	89 e5                	mov    %esp,%ebp
c0002e81:	83 ec 20             	sub    $0x20,%esp
c0002e84:	e8 8f ec ff ff       	call   c0001b18 <__x86.get_pc_thunk.ax>
c0002e89:	05 77 31 00 00       	add    $0x3177,%eax
c0002e8e:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
c0002e95:	eb 04                	jmp    c0002e9b <bitmap_scan+0x1d>
c0002e97:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
c0002e9b:	8b 45 08             	mov    0x8(%ebp),%eax
c0002e9e:	8b 00                	mov    (%eax),%eax
c0002ea0:	39 45 ec             	cmp    %eax,-0x14(%ebp)
c0002ea3:	73 12                	jae    c0002eb7 <bitmap_scan+0x39>
c0002ea5:	8b 45 08             	mov    0x8(%ebp),%eax
c0002ea8:	8b 50 04             	mov    0x4(%eax),%edx
c0002eab:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0002eae:	01 d0                	add    %edx,%eax
c0002eb0:	0f b6 00             	movzbl (%eax),%eax
c0002eb3:	3c ff                	cmp    $0xff,%al
c0002eb5:	74 e0                	je     c0002e97 <bitmap_scan+0x19>
c0002eb7:	8b 45 08             	mov    0x8(%ebp),%eax
c0002eba:	8b 00                	mov    (%eax),%eax
c0002ebc:	39 45 ec             	cmp    %eax,-0x14(%ebp)
c0002ebf:	72 0a                	jb     c0002ecb <bitmap_scan+0x4d>
c0002ec1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0002ec6:	e9 9f 00 00 00       	jmp    c0002f6a <bitmap_scan+0xec>
c0002ecb:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c0002ed2:	eb 04                	jmp    c0002ed8 <bitmap_scan+0x5a>
c0002ed4:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0002ed8:	8b 45 08             	mov    0x8(%ebp),%eax
c0002edb:	8b 50 04             	mov    0x4(%eax),%edx
c0002ede:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0002ee1:	01 d0                	add    %edx,%eax
c0002ee3:	0f b6 00             	movzbl (%eax),%eax
c0002ee6:	0f b6 d0             	movzbl %al,%edx
c0002ee9:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0002eec:	89 c1                	mov    %eax,%ecx
c0002eee:	d3 fa                	sar    %cl,%edx
c0002ef0:	89 d0                	mov    %edx,%eax
c0002ef2:	83 e0 01             	and    $0x1,%eax
c0002ef5:	85 c0                	test   %eax,%eax
c0002ef7:	75 db                	jne    c0002ed4 <bitmap_scan+0x56>
c0002ef9:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0002efc:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
c0002f03:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0002f06:	01 d0                	add    %edx,%eax
c0002f08:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0002f0b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0002f0e:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0002f11:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0002f18:	c7 45 f4 ff ff ff ff 	movl   $0xffffffff,-0xc(%ebp)
c0002f1f:	eb 39                	jmp    c0002f5a <bitmap_scan+0xdc>
c0002f21:	ff 75 f8             	push   -0x8(%ebp)
c0002f24:	ff 75 08             	push   0x8(%ebp)
c0002f27:	e8 09 ff ff ff       	call   c0002e35 <test_bitmap_scan>
c0002f2c:	83 c4 08             	add    $0x8,%esp
c0002f2f:	85 c0                	test   %eax,%eax
c0002f31:	75 06                	jne    c0002f39 <bitmap_scan+0xbb>
c0002f33:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c0002f37:	eb 07                	jmp    c0002f40 <bitmap_scan+0xc2>
c0002f39:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0002f40:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0002f43:	3b 45 0c             	cmp    0xc(%ebp),%eax
c0002f46:	75 0e                	jne    c0002f56 <bitmap_scan+0xd8>
c0002f48:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0002f4b:	2b 45 0c             	sub    0xc(%ebp),%eax
c0002f4e:	83 c0 01             	add    $0x1,%eax
c0002f51:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0002f54:	eb 11                	jmp    c0002f67 <bitmap_scan+0xe9>
c0002f56:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
c0002f5a:	8b 45 08             	mov    0x8(%ebp),%eax
c0002f5d:	8b 00                	mov    (%eax),%eax
c0002f5f:	c1 e0 03             	shl    $0x3,%eax
c0002f62:	39 45 f8             	cmp    %eax,-0x8(%ebp)
c0002f65:	72 ba                	jb     c0002f21 <bitmap_scan+0xa3>
c0002f67:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0002f6a:	c9                   	leave  
c0002f6b:	c3                   	ret    

c0002f6c <set_bitmap>:
c0002f6c:	55                   	push   %ebp
c0002f6d:	89 e5                	mov    %esp,%ebp
c0002f6f:	53                   	push   %ebx
c0002f70:	83 ec 24             	sub    $0x24,%esp
c0002f73:	e8 a0 eb ff ff       	call   c0001b18 <__x86.get_pc_thunk.ax>
c0002f78:	05 88 30 00 00       	add    $0x3088,%eax
c0002f7d:	8b 55 10             	mov    0x10(%ebp),%edx
c0002f80:	88 55 e4             	mov    %dl,-0x1c(%ebp)
c0002f83:	80 7d e4 01          	cmpb   $0x1,-0x1c(%ebp)
c0002f87:	74 27                	je     c0002fb0 <set_bitmap+0x44>
c0002f89:	80 7d e4 00          	cmpb   $0x0,-0x1c(%ebp)
c0002f8d:	74 21                	je     c0002fb0 <set_bitmap+0x44>
c0002f8f:	8d 90 0c e5 ff ff    	lea    -0x1af4(%eax),%edx
c0002f95:	52                   	push   %edx
c0002f96:	8d 90 2c e5 ff ff    	lea    -0x1ad4(%eax),%edx
c0002f9c:	52                   	push   %edx
c0002f9d:	6a 43                	push   $0x43
c0002f9f:	8d 90 23 e5 ff ff    	lea    -0x1add(%eax),%edx
c0002fa5:	52                   	push   %edx
c0002fa6:	89 c3                	mov    %eax,%ebx
c0002fa8:	e8 93 f2 ff ff       	call   c0002240 <panic_spin>
c0002fad:	83 c4 10             	add    $0x10,%esp
c0002fb0:	8b 45 0c             	mov    0xc(%ebp),%eax
c0002fb3:	c1 e8 03             	shr    $0x3,%eax
c0002fb6:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0002fb9:	8b 45 0c             	mov    0xc(%ebp),%eax
c0002fbc:	83 e0 07             	and    $0x7,%eax
c0002fbf:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0002fc2:	80 7d e4 01          	cmpb   $0x1,-0x1c(%ebp)
c0002fc6:	75 32                	jne    c0002ffa <set_bitmap+0x8e>
c0002fc8:	8b 45 08             	mov    0x8(%ebp),%eax
c0002fcb:	8b 50 04             	mov    0x4(%eax),%edx
c0002fce:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0002fd1:	01 d0                	add    %edx,%eax
c0002fd3:	0f b6 00             	movzbl (%eax),%eax
c0002fd6:	89 c3                	mov    %eax,%ebx
c0002fd8:	0f be 55 e4          	movsbl -0x1c(%ebp),%edx
c0002fdc:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0002fdf:	89 c1                	mov    %eax,%ecx
c0002fe1:	d3 e2                	shl    %cl,%edx
c0002fe3:	89 d0                	mov    %edx,%eax
c0002fe5:	09 c3                	or     %eax,%ebx
c0002fe7:	89 d9                	mov    %ebx,%ecx
c0002fe9:	8b 45 08             	mov    0x8(%ebp),%eax
c0002fec:	8b 50 04             	mov    0x4(%eax),%edx
c0002fef:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0002ff2:	01 d0                	add    %edx,%eax
c0002ff4:	89 ca                	mov    %ecx,%edx
c0002ff6:	88 10                	mov    %dl,(%eax)
c0002ff8:	eb 30                	jmp    c000302a <set_bitmap+0xbe>
c0002ffa:	8b 45 08             	mov    0x8(%ebp),%eax
c0002ffd:	8b 50 04             	mov    0x4(%eax),%edx
c0003000:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0003003:	01 d0                	add    %edx,%eax
c0003005:	0f b6 00             	movzbl (%eax),%eax
c0003008:	89 c3                	mov    %eax,%ebx
c000300a:	0f be 55 e4          	movsbl -0x1c(%ebp),%edx
c000300e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003011:	89 c1                	mov    %eax,%ecx
c0003013:	d3 e2                	shl    %cl,%edx
c0003015:	89 d0                	mov    %edx,%eax
c0003017:	89 d9                	mov    %ebx,%ecx
c0003019:	21 c1                	and    %eax,%ecx
c000301b:	8b 45 08             	mov    0x8(%ebp),%eax
c000301e:	8b 50 04             	mov    0x4(%eax),%edx
c0003021:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0003024:	01 d0                	add    %edx,%eax
c0003026:	89 ca                	mov    %ecx,%edx
c0003028:	88 10                	mov    %dl,(%eax)
c000302a:	90                   	nop
c000302b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c000302e:	c9                   	leave  
c000302f:	c3                   	ret    

c0003030 <running_thread>:
c0003030:	55                   	push   %ebp
c0003031:	89 e5                	mov    %esp,%ebp
c0003033:	83 ec 10             	sub    $0x10,%esp
c0003036:	e8 dd ea ff ff       	call   c0001b18 <__x86.get_pc_thunk.ax>
c000303b:	05 c5 2f 00 00       	add    $0x2fc5,%eax
c0003040:	89 e0                	mov    %esp,%eax
c0003042:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0003045:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0003048:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c000304d:	c9                   	leave  
c000304e:	c3                   	ret    

c000304f <kernel_thread>:
c000304f:	55                   	push   %ebp
c0003050:	89 e5                	mov    %esp,%ebp
c0003052:	53                   	push   %ebx
c0003053:	83 ec 04             	sub    $0x4,%esp
c0003056:	e8 bd ea ff ff       	call   c0001b18 <__x86.get_pc_thunk.ax>
c000305b:	05 a5 2f 00 00       	add    $0x2fa5,%eax
c0003060:	89 c3                	mov    %eax,%ebx
c0003062:	e8 00 ea ff ff       	call   c0001a67 <intr_enable>
c0003067:	83 ec 0c             	sub    $0xc,%esp
c000306a:	ff 75 0c             	push   0xc(%ebp)
c000306d:	8b 45 08             	mov    0x8(%ebp),%eax
c0003070:	ff d0                	call   *%eax
c0003072:	83 c4 10             	add    $0x10,%esp
c0003075:	90                   	nop
c0003076:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0003079:	c9                   	leave  
c000307a:	c3                   	ret    

c000307b <thread_create>:
c000307b:	55                   	push   %ebp
c000307c:	89 e5                	mov    %esp,%ebp
c000307e:	83 ec 10             	sub    $0x10,%esp
c0003081:	e8 5b 04 00 00       	call   c00034e1 <__x86.get_pc_thunk.dx>
c0003086:	81 c2 7a 2f 00 00    	add    $0x2f7a,%edx
c000308c:	8b 45 08             	mov    0x8(%ebp),%eax
c000308f:	8b 00                	mov    (%eax),%eax
c0003091:	8d 88 d0 fe ff ff    	lea    -0x130(%eax),%ecx
c0003097:	8b 45 08             	mov    0x8(%ebp),%eax
c000309a:	89 08                	mov    %ecx,(%eax)
c000309c:	8b 45 08             	mov    0x8(%ebp),%eax
c000309f:	8b 00                	mov    (%eax),%eax
c00030a1:	8d 48 80             	lea    -0x80(%eax),%ecx
c00030a4:	8b 45 08             	mov    0x8(%ebp),%eax
c00030a7:	89 08                	mov    %ecx,(%eax)
c00030a9:	8b 45 08             	mov    0x8(%ebp),%eax
c00030ac:	8b 00                	mov    (%eax),%eax
c00030ae:	89 45 fc             	mov    %eax,-0x4(%ebp)
c00030b1:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00030b4:	8d 92 4f d0 ff ff    	lea    -0x2fb1(%edx),%edx
c00030ba:	89 50 10             	mov    %edx,0x10(%eax)
c00030bd:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00030c0:	8b 55 0c             	mov    0xc(%ebp),%edx
c00030c3:	89 50 18             	mov    %edx,0x18(%eax)
c00030c6:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00030c9:	8b 55 10             	mov    0x10(%ebp),%edx
c00030cc:	89 50 1c             	mov    %edx,0x1c(%eax)
c00030cf:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00030d2:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
c00030d9:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00030dc:	8b 50 08             	mov    0x8(%eax),%edx
c00030df:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00030e2:	89 50 0c             	mov    %edx,0xc(%eax)
c00030e5:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00030e8:	8b 50 0c             	mov    0xc(%eax),%edx
c00030eb:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00030ee:	89 50 04             	mov    %edx,0x4(%eax)
c00030f1:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00030f4:	8b 50 04             	mov    0x4(%eax),%edx
c00030f7:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00030fa:	89 10                	mov    %edx,(%eax)
c00030fc:	90                   	nop
c00030fd:	c9                   	leave  
c00030fe:	c3                   	ret    

c00030ff <init_thread>:
c00030ff:	55                   	push   %ebp
c0003100:	89 e5                	mov    %esp,%ebp
c0003102:	53                   	push   %ebx
c0003103:	83 ec 04             	sub    $0x4,%esp
c0003106:	e8 dd e4 ff ff       	call   c00015e8 <__x86.get_pc_thunk.bx>
c000310b:	81 c3 f5 2e 00 00    	add    $0x2ef5,%ebx
c0003111:	83 ec 04             	sub    $0x4,%esp
c0003114:	6a 34                	push   $0x34
c0003116:	6a 00                	push   $0x0
c0003118:	ff 75 08             	push   0x8(%ebp)
c000311b:	e8 ee f1 ff ff       	call   c000230e <memset>
c0003120:	83 c4 10             	add    $0x10,%esp
c0003123:	8b 45 08             	mov    0x8(%ebp),%eax
c0003126:	83 c0 14             	add    $0x14,%eax
c0003129:	83 ec 08             	sub    $0x8,%esp
c000312c:	ff 75 0c             	push   0xc(%ebp)
c000312f:	50                   	push   %eax
c0003130:	e8 52 f3 ff ff       	call   c0002487 <strcpy>
c0003135:	83 c4 10             	add    $0x10,%esp
c0003138:	8b 83 f8 01 00 00    	mov    0x1f8(%ebx),%eax
c000313e:	39 45 08             	cmp    %eax,0x8(%ebp)
c0003141:	75 0c                	jne    c000314f <init_thread+0x50>
c0003143:	8b 45 08             	mov    0x8(%ebp),%eax
c0003146:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c000314d:	eb 0a                	jmp    c0003159 <init_thread+0x5a>
c000314f:	8b 45 08             	mov    0x8(%ebp),%eax
c0003152:	c7 40 04 01 00 00 00 	movl   $0x1,0x4(%eax)
c0003159:	8b 45 08             	mov    0x8(%ebp),%eax
c000315c:	05 00 10 00 00       	add    $0x1000,%eax
c0003161:	89 c2                	mov    %eax,%edx
c0003163:	8b 45 08             	mov    0x8(%ebp),%eax
c0003166:	89 10                	mov    %edx,(%eax)
c0003168:	8b 45 08             	mov    0x8(%ebp),%eax
c000316b:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0003172:	8b 55 10             	mov    0x10(%ebp),%edx
c0003175:	8b 45 08             	mov    0x8(%ebp),%eax
c0003178:	89 50 08             	mov    %edx,0x8(%eax)
c000317b:	8b 45 10             	mov    0x10(%ebp),%eax
c000317e:	89 c2                	mov    %eax,%edx
c0003180:	8b 45 08             	mov    0x8(%ebp),%eax
c0003183:	88 50 0c             	mov    %dl,0xc(%eax)
c0003186:	8b 45 08             	mov    0x8(%ebp),%eax
c0003189:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
c0003190:	8b 45 08             	mov    0x8(%ebp),%eax
c0003193:	c7 40 2c 00 00 00 00 	movl   $0x0,0x2c(%eax)
c000319a:	8b 45 08             	mov    0x8(%ebp),%eax
c000319d:	c7 40 30 13 09 22 20 	movl   $0x20220913,0x30(%eax)
c00031a4:	90                   	nop
c00031a5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00031a8:	c9                   	leave  
c00031a9:	c3                   	ret    

c00031aa <thread_start>:
c00031aa:	55                   	push   %ebp
c00031ab:	89 e5                	mov    %esp,%ebp
c00031ad:	53                   	push   %ebx
c00031ae:	83 ec 14             	sub    $0x14,%esp
c00031b1:	e8 32 e4 ff ff       	call   c00015e8 <__x86.get_pc_thunk.bx>
c00031b6:	81 c3 4a 2e 00 00    	add    $0x2e4a,%ebx
c00031bc:	83 ec 0c             	sub    $0xc,%esp
c00031bf:	6a 01                	push   $0x1
c00031c1:	e8 88 f9 ff ff       	call   c0002b4e <get_kernel_page>
c00031c6:	83 c4 10             	add    $0x10,%esp
c00031c9:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00031cc:	83 ec 04             	sub    $0x4,%esp
c00031cf:	ff 75 0c             	push   0xc(%ebp)
c00031d2:	ff 75 08             	push   0x8(%ebp)
c00031d5:	ff 75 f4             	push   -0xc(%ebp)
c00031d8:	e8 22 ff ff ff       	call   c00030ff <init_thread>
c00031dd:	83 c4 10             	add    $0x10,%esp
c00031e0:	83 ec 04             	sub    $0x4,%esp
c00031e3:	ff 75 14             	push   0x14(%ebp)
c00031e6:	ff 75 10             	push   0x10(%ebp)
c00031e9:	ff 75 f4             	push   -0xc(%ebp)
c00031ec:	e8 8a fe ff ff       	call   c000307b <thread_create>
c00031f1:	83 c4 10             	add    $0x10,%esp
c00031f4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00031f7:	83 c0 1c             	add    $0x1c,%eax
c00031fa:	83 ec 08             	sub    $0x8,%esp
c00031fd:	50                   	push   %eax
c00031fe:	8d 83 fc 01 00 00    	lea    0x1fc(%ebx),%eax
c0003204:	50                   	push   %eax
c0003205:	e8 2f 05 00 00       	call   c0003739 <elem_find>
c000320a:	83 c4 10             	add    $0x10,%esp
c000320d:	85 c0                	test   %eax,%eax
c000320f:	74 1f                	je     c0003230 <thread_start+0x86>
c0003211:	8d 83 38 e5 ff ff    	lea    -0x1ac8(%ebx),%eax
c0003217:	50                   	push   %eax
c0003218:	8d 83 80 e6 ff ff    	lea    -0x1980(%ebx),%eax
c000321e:	50                   	push   %eax
c000321f:	6a 4f                	push   $0x4f
c0003221:	8d 83 6c e5 ff ff    	lea    -0x1a94(%ebx),%eax
c0003227:	50                   	push   %eax
c0003228:	e8 13 f0 ff ff       	call   c0002240 <panic_spin>
c000322d:	83 c4 10             	add    $0x10,%esp
c0003230:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003233:	83 c0 1c             	add    $0x1c,%eax
c0003236:	83 ec 08             	sub    $0x8,%esp
c0003239:	50                   	push   %eax
c000323a:	8d 83 fc 01 00 00    	lea    0x1fc(%ebx),%eax
c0003240:	50                   	push   %eax
c0003241:	e8 57 03 00 00       	call   c000359d <list_append>
c0003246:	83 c4 10             	add    $0x10,%esp
c0003249:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000324c:	83 c0 24             	add    $0x24,%eax
c000324f:	83 ec 08             	sub    $0x8,%esp
c0003252:	50                   	push   %eax
c0003253:	8d 83 0c 02 00 00    	lea    0x20c(%ebx),%eax
c0003259:	50                   	push   %eax
c000325a:	e8 da 04 00 00       	call   c0003739 <elem_find>
c000325f:	83 c4 10             	add    $0x10,%esp
c0003262:	85 c0                	test   %eax,%eax
c0003264:	74 1f                	je     c0003285 <thread_start+0xdb>
c0003266:	8d 83 78 e5 ff ff    	lea    -0x1a88(%ebx),%eax
c000326c:	50                   	push   %eax
c000326d:	8d 83 80 e6 ff ff    	lea    -0x1980(%ebx),%eax
c0003273:	50                   	push   %eax
c0003274:	6a 55                	push   $0x55
c0003276:	8d 83 6c e5 ff ff    	lea    -0x1a94(%ebx),%eax
c000327c:	50                   	push   %eax
c000327d:	e8 be ef ff ff       	call   c0002240 <panic_spin>
c0003282:	83 c4 10             	add    $0x10,%esp
c0003285:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003288:	83 c0 24             	add    $0x24,%eax
c000328b:	83 ec 08             	sub    $0x8,%esp
c000328e:	50                   	push   %eax
c000328f:	8d 83 0c 02 00 00    	lea    0x20c(%ebx),%eax
c0003295:	50                   	push   %eax
c0003296:	e8 02 03 00 00       	call   c000359d <list_append>
c000329b:	83 c4 10             	add    $0x10,%esp
c000329e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00032a1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00032a4:	c9                   	leave  
c00032a5:	c3                   	ret    

c00032a6 <make_main_thread>:
c00032a6:	55                   	push   %ebp
c00032a7:	89 e5                	mov    %esp,%ebp
c00032a9:	53                   	push   %ebx
c00032aa:	83 ec 04             	sub    $0x4,%esp
c00032ad:	e8 36 e3 ff ff       	call   c00015e8 <__x86.get_pc_thunk.bx>
c00032b2:	81 c3 4e 2d 00 00    	add    $0x2d4e,%ebx
c00032b8:	e8 73 fd ff ff       	call   c0003030 <running_thread>
c00032bd:	89 83 f8 01 00 00    	mov    %eax,0x1f8(%ebx)
c00032c3:	8b 83 f8 01 00 00    	mov    0x1f8(%ebx),%eax
c00032c9:	83 ec 04             	sub    $0x4,%esp
c00032cc:	6a 1f                	push   $0x1f
c00032ce:	8d 93 ab e5 ff ff    	lea    -0x1a55(%ebx),%edx
c00032d4:	52                   	push   %edx
c00032d5:	50                   	push   %eax
c00032d6:	e8 24 fe ff ff       	call   c00030ff <init_thread>
c00032db:	83 c4 10             	add    $0x10,%esp
c00032de:	8b 83 f8 01 00 00    	mov    0x1f8(%ebx),%eax
c00032e4:	83 c0 24             	add    $0x24,%eax
c00032e7:	83 ec 08             	sub    $0x8,%esp
c00032ea:	50                   	push   %eax
c00032eb:	8d 83 0c 02 00 00    	lea    0x20c(%ebx),%eax
c00032f1:	50                   	push   %eax
c00032f2:	e8 42 04 00 00       	call   c0003739 <elem_find>
c00032f7:	83 c4 10             	add    $0x10,%esp
c00032fa:	85 c0                	test   %eax,%eax
c00032fc:	74 1f                	je     c000331d <make_main_thread+0x77>
c00032fe:	8d 83 b0 e5 ff ff    	lea    -0x1a50(%ebx),%eax
c0003304:	50                   	push   %eax
c0003305:	8d 83 90 e6 ff ff    	lea    -0x1970(%ebx),%eax
c000330b:	50                   	push   %eax
c000330c:	6a 63                	push   $0x63
c000330e:	8d 83 6c e5 ff ff    	lea    -0x1a94(%ebx),%eax
c0003314:	50                   	push   %eax
c0003315:	e8 26 ef ff ff       	call   c0002240 <panic_spin>
c000331a:	83 c4 10             	add    $0x10,%esp
c000331d:	8b 83 f8 01 00 00    	mov    0x1f8(%ebx),%eax
c0003323:	83 c0 24             	add    $0x24,%eax
c0003326:	83 ec 08             	sub    $0x8,%esp
c0003329:	50                   	push   %eax
c000332a:	8d 83 0c 02 00 00    	lea    0x20c(%ebx),%eax
c0003330:	50                   	push   %eax
c0003331:	e8 67 02 00 00       	call   c000359d <list_append>
c0003336:	83 c4 10             	add    $0x10,%esp
c0003339:	90                   	nop
c000333a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c000333d:	c9                   	leave  
c000333e:	c3                   	ret    

c000333f <schedule>:
c000333f:	55                   	push   %ebp
c0003340:	89 e5                	mov    %esp,%ebp
c0003342:	53                   	push   %ebx
c0003343:	83 ec 14             	sub    $0x14,%esp
c0003346:	e8 9d e2 ff ff       	call   c00015e8 <__x86.get_pc_thunk.bx>
c000334b:	81 c3 b5 2c 00 00    	add    $0x2cb5,%ebx
c0003351:	e8 77 e7 ff ff       	call   c0001acd <intr_get_status>
c0003356:	85 c0                	test   %eax,%eax
c0003358:	74 1f                	je     c0003379 <schedule+0x3a>
c000335a:	8d 83 e8 e5 ff ff    	lea    -0x1a18(%ebx),%eax
c0003360:	50                   	push   %eax
c0003361:	8d 83 a4 e6 ff ff    	lea    -0x195c(%ebx),%eax
c0003367:	50                   	push   %eax
c0003368:	6a 69                	push   $0x69
c000336a:	8d 83 6c e5 ff ff    	lea    -0x1a94(%ebx),%eax
c0003370:	50                   	push   %eax
c0003371:	e8 ca ee ff ff       	call   c0002240 <panic_spin>
c0003376:	83 c4 10             	add    $0x10,%esp
c0003379:	e8 b2 fc ff ff       	call   c0003030 <running_thread>
c000337e:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0003381:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003384:	8b 40 04             	mov    0x4(%eax),%eax
c0003387:	85 c0                	test   %eax,%eax
c0003389:	75 6d                	jne    c00033f8 <schedule+0xb9>
c000338b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000338e:	83 c0 1c             	add    $0x1c,%eax
c0003391:	83 ec 08             	sub    $0x8,%esp
c0003394:	50                   	push   %eax
c0003395:	8d 83 fc 01 00 00    	lea    0x1fc(%ebx),%eax
c000339b:	50                   	push   %eax
c000339c:	e8 98 03 00 00       	call   c0003739 <elem_find>
c00033a1:	83 c4 10             	add    $0x10,%esp
c00033a4:	85 c0                	test   %eax,%eax
c00033a6:	74 1f                	je     c00033c7 <schedule+0x88>
c00033a8:	8d 83 04 e6 ff ff    	lea    -0x19fc(%ebx),%eax
c00033ae:	50                   	push   %eax
c00033af:	8d 83 a4 e6 ff ff    	lea    -0x195c(%ebx),%eax
c00033b5:	50                   	push   %eax
c00033b6:	6a 72                	push   $0x72
c00033b8:	8d 83 6c e5 ff ff    	lea    -0x1a94(%ebx),%eax
c00033be:	50                   	push   %eax
c00033bf:	e8 7c ee ff ff       	call   c0002240 <panic_spin>
c00033c4:	83 c4 10             	add    $0x10,%esp
c00033c7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00033ca:	83 c0 1c             	add    $0x1c,%eax
c00033cd:	83 ec 08             	sub    $0x8,%esp
c00033d0:	50                   	push   %eax
c00033d1:	8d 83 fc 01 00 00    	lea    0x1fc(%ebx),%eax
c00033d7:	50                   	push   %eax
c00033d8:	e8 c0 01 00 00       	call   c000359d <list_append>
c00033dd:	83 c4 10             	add    $0x10,%esp
c00033e0:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00033e3:	8b 40 08             	mov    0x8(%eax),%eax
c00033e6:	89 c2                	mov    %eax,%edx
c00033e8:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00033eb:	88 50 0c             	mov    %dl,0xc(%eax)
c00033ee:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00033f1:	c7 40 04 01 00 00 00 	movl   $0x1,0x4(%eax)
c00033f8:	83 ec 0c             	sub    $0xc,%esp
c00033fb:	8d 83 fc 01 00 00    	lea    0x1fc(%ebx),%eax
c0003401:	50                   	push   %eax
c0003402:	e8 6c 02 00 00       	call   c0003673 <list_empty>
c0003407:	83 c4 10             	add    $0x10,%esp
c000340a:	85 c0                	test   %eax,%eax
c000340c:	74 1f                	je     c000342d <schedule+0xee>
c000340e:	8d 83 3c e6 ff ff    	lea    -0x19c4(%ebx),%eax
c0003414:	50                   	push   %eax
c0003415:	8d 83 a4 e6 ff ff    	lea    -0x195c(%ebx),%eax
c000341b:	50                   	push   %eax
c000341c:	6a 7e                	push   $0x7e
c000341e:	8d 83 6c e5 ff ff    	lea    -0x1a94(%ebx),%eax
c0003424:	50                   	push   %eax
c0003425:	e8 16 ee ff ff       	call   c0002240 <panic_spin>
c000342a:	83 c4 10             	add    $0x10,%esp
c000342d:	c7 83 1c 02 00 00 00 	movl   $0x0,0x21c(%ebx)
c0003434:	00 00 00 
c0003437:	83 ec 0c             	sub    $0xc,%esp
c000343a:	8d 83 fc 01 00 00    	lea    0x1fc(%ebx),%eax
c0003440:	50                   	push   %eax
c0003441:	e8 c8 01 00 00       	call   c000360e <list_pop>
c0003446:	83 c4 10             	add    $0x10,%esp
c0003449:	89 83 1c 02 00 00    	mov    %eax,0x21c(%ebx)
c000344f:	8b 83 1c 02 00 00    	mov    0x21c(%ebx),%eax
c0003455:	83 e8 1c             	sub    $0x1c,%eax
c0003458:	89 45 f0             	mov    %eax,-0x10(%ebp)
c000345b:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000345e:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0003465:	83 ec 08             	sub    $0x8,%esp
c0003468:	ff 75 f0             	push   -0x10(%ebp)
c000346b:	ff 75 f4             	push   -0xc(%ebp)
c000346e:	e8 0d 03 00 00       	call   c0003780 <switch_to>
c0003473:	83 c4 10             	add    $0x10,%esp
c0003476:	90                   	nop
c0003477:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c000347a:	c9                   	leave  
c000347b:	c3                   	ret    

c000347c <thread_init>:
c000347c:	55                   	push   %ebp
c000347d:	89 e5                	mov    %esp,%ebp
c000347f:	53                   	push   %ebx
c0003480:	83 ec 04             	sub    $0x4,%esp
c0003483:	e8 60 e1 ff ff       	call   c00015e8 <__x86.get_pc_thunk.bx>
c0003488:	81 c3 78 2b 00 00    	add    $0x2b78,%ebx
c000348e:	83 ec 0c             	sub    $0xc,%esp
c0003491:	8d 83 5c e6 ff ff    	lea    -0x19a4(%ebx),%eax
c0003497:	50                   	push   %eax
c0003498:	e8 f5 ec ff ff       	call   c0002192 <put_str>
c000349d:	83 c4 10             	add    $0x10,%esp
c00034a0:	83 ec 0c             	sub    $0xc,%esp
c00034a3:	8d 83 fc 01 00 00    	lea    0x1fc(%ebx),%eax
c00034a9:	50                   	push   %eax
c00034aa:	e8 36 00 00 00       	call   c00034e5 <list_init>
c00034af:	83 c4 10             	add    $0x10,%esp
c00034b2:	83 ec 0c             	sub    $0xc,%esp
c00034b5:	8d 83 0c 02 00 00    	lea    0x20c(%ebx),%eax
c00034bb:	50                   	push   %eax
c00034bc:	e8 24 00 00 00       	call   c00034e5 <list_init>
c00034c1:	83 c4 10             	add    $0x10,%esp
c00034c4:	e8 dd fd ff ff       	call   c00032a6 <make_main_thread>
c00034c9:	83 ec 0c             	sub    $0xc,%esp
c00034cc:	8d 83 6f e6 ff ff    	lea    -0x1991(%ebx),%eax
c00034d2:	50                   	push   %eax
c00034d3:	e8 ba ec ff ff       	call   c0002192 <put_str>
c00034d8:	83 c4 10             	add    $0x10,%esp
c00034db:	90                   	nop
c00034dc:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00034df:	c9                   	leave  
c00034e0:	c3                   	ret    

c00034e1 <__x86.get_pc_thunk.dx>:
c00034e1:	8b 14 24             	mov    (%esp),%edx
c00034e4:	c3                   	ret    

c00034e5 <list_init>:
c00034e5:	55                   	push   %ebp
c00034e6:	89 e5                	mov    %esp,%ebp
c00034e8:	e8 2b e6 ff ff       	call   c0001b18 <__x86.get_pc_thunk.ax>
c00034ed:	05 13 2b 00 00       	add    $0x2b13,%eax
c00034f2:	8b 45 08             	mov    0x8(%ebp),%eax
c00034f5:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c00034fb:	8b 45 08             	mov    0x8(%ebp),%eax
c00034fe:	8d 50 08             	lea    0x8(%eax),%edx
c0003501:	8b 45 08             	mov    0x8(%ebp),%eax
c0003504:	89 50 04             	mov    %edx,0x4(%eax)
c0003507:	8b 55 08             	mov    0x8(%ebp),%edx
c000350a:	8b 45 08             	mov    0x8(%ebp),%eax
c000350d:	89 50 08             	mov    %edx,0x8(%eax)
c0003510:	8b 45 08             	mov    0x8(%ebp),%eax
c0003513:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c000351a:	90                   	nop
c000351b:	5d                   	pop    %ebp
c000351c:	c3                   	ret    

c000351d <list_insert_before>:
c000351d:	55                   	push   %ebp
c000351e:	89 e5                	mov    %esp,%ebp
c0003520:	53                   	push   %ebx
c0003521:	83 ec 14             	sub    $0x14,%esp
c0003524:	e8 bf e0 ff ff       	call   c00015e8 <__x86.get_pc_thunk.bx>
c0003529:	81 c3 d7 2a 00 00    	add    $0x2ad7,%ebx
c000352f:	e8 66 e5 ff ff       	call   c0001a9a <intr_disable>
c0003534:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0003537:	8b 45 08             	mov    0x8(%ebp),%eax
c000353a:	8b 00                	mov    (%eax),%eax
c000353c:	89 45 f4             	mov    %eax,-0xc(%ebp)
c000353f:	8b 45 08             	mov    0x8(%ebp),%eax
c0003542:	8b 55 0c             	mov    0xc(%ebp),%edx
c0003545:	89 10                	mov    %edx,(%eax)
c0003547:	8b 45 0c             	mov    0xc(%ebp),%eax
c000354a:	8b 55 08             	mov    0x8(%ebp),%edx
c000354d:	89 50 04             	mov    %edx,0x4(%eax)
c0003550:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003553:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0003556:	89 10                	mov    %edx,(%eax)
c0003558:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000355b:	8b 55 0c             	mov    0xc(%ebp),%edx
c000355e:	89 50 04             	mov    %edx,0x4(%eax)
c0003561:	83 ec 0c             	sub    $0xc,%esp
c0003564:	ff 75 f0             	push   -0x10(%ebp)
c0003567:	e8 84 e5 ff ff       	call   c0001af0 <intr_set_status>
c000356c:	83 c4 10             	add    $0x10,%esp
c000356f:	90                   	nop
c0003570:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0003573:	c9                   	leave  
c0003574:	c3                   	ret    

c0003575 <list_push>:
c0003575:	55                   	push   %ebp
c0003576:	89 e5                	mov    %esp,%ebp
c0003578:	83 ec 08             	sub    $0x8,%esp
c000357b:	e8 98 e5 ff ff       	call   c0001b18 <__x86.get_pc_thunk.ax>
c0003580:	05 80 2a 00 00       	add    $0x2a80,%eax
c0003585:	8b 45 08             	mov    0x8(%ebp),%eax
c0003588:	8b 40 04             	mov    0x4(%eax),%eax
c000358b:	83 ec 08             	sub    $0x8,%esp
c000358e:	ff 75 0c             	push   0xc(%ebp)
c0003591:	50                   	push   %eax
c0003592:	e8 86 ff ff ff       	call   c000351d <list_insert_before>
c0003597:	83 c4 10             	add    $0x10,%esp
c000359a:	90                   	nop
c000359b:	c9                   	leave  
c000359c:	c3                   	ret    

c000359d <list_append>:
c000359d:	55                   	push   %ebp
c000359e:	89 e5                	mov    %esp,%ebp
c00035a0:	83 ec 08             	sub    $0x8,%esp
c00035a3:	e8 70 e5 ff ff       	call   c0001b18 <__x86.get_pc_thunk.ax>
c00035a8:	05 58 2a 00 00       	add    $0x2a58,%eax
c00035ad:	8b 45 08             	mov    0x8(%ebp),%eax
c00035b0:	83 c0 08             	add    $0x8,%eax
c00035b3:	83 ec 08             	sub    $0x8,%esp
c00035b6:	ff 75 0c             	push   0xc(%ebp)
c00035b9:	50                   	push   %eax
c00035ba:	e8 5e ff ff ff       	call   c000351d <list_insert_before>
c00035bf:	83 c4 10             	add    $0x10,%esp
c00035c2:	90                   	nop
c00035c3:	c9                   	leave  
c00035c4:	c3                   	ret    

c00035c5 <list_remove>:
c00035c5:	55                   	push   %ebp
c00035c6:	89 e5                	mov    %esp,%ebp
c00035c8:	53                   	push   %ebx
c00035c9:	83 ec 14             	sub    $0x14,%esp
c00035cc:	e8 17 e0 ff ff       	call   c00015e8 <__x86.get_pc_thunk.bx>
c00035d1:	81 c3 2f 2a 00 00    	add    $0x2a2f,%ebx
c00035d7:	e8 be e4 ff ff       	call   c0001a9a <intr_disable>
c00035dc:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00035df:	8b 45 08             	mov    0x8(%ebp),%eax
c00035e2:	8b 00                	mov    (%eax),%eax
c00035e4:	8b 55 08             	mov    0x8(%ebp),%edx
c00035e7:	8b 52 04             	mov    0x4(%edx),%edx
c00035ea:	89 50 04             	mov    %edx,0x4(%eax)
c00035ed:	8b 45 08             	mov    0x8(%ebp),%eax
c00035f0:	8b 40 04             	mov    0x4(%eax),%eax
c00035f3:	8b 55 08             	mov    0x8(%ebp),%edx
c00035f6:	8b 12                	mov    (%edx),%edx
c00035f8:	89 10                	mov    %edx,(%eax)
c00035fa:	83 ec 0c             	sub    $0xc,%esp
c00035fd:	ff 75 f4             	push   -0xc(%ebp)
c0003600:	e8 eb e4 ff ff       	call   c0001af0 <intr_set_status>
c0003605:	83 c4 10             	add    $0x10,%esp
c0003608:	90                   	nop
c0003609:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c000360c:	c9                   	leave  
c000360d:	c3                   	ret    

c000360e <list_pop>:
c000360e:	55                   	push   %ebp
c000360f:	89 e5                	mov    %esp,%ebp
c0003611:	53                   	push   %ebx
c0003612:	83 ec 14             	sub    $0x14,%esp
c0003615:	e8 fe e4 ff ff       	call   c0001b18 <__x86.get_pc_thunk.ax>
c000361a:	05 e6 29 00 00       	add    $0x29e6,%eax
c000361f:	8b 55 08             	mov    0x8(%ebp),%edx
c0003622:	8b 52 04             	mov    0x4(%edx),%edx
c0003625:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0003628:	83 c1 08             	add    $0x8,%ecx
c000362b:	39 ca                	cmp    %ecx,%edx
c000362d:	75 21                	jne    c0003650 <list_pop+0x42>
c000362f:	8d 90 b0 e6 ff ff    	lea    -0x1950(%eax),%edx
c0003635:	52                   	push   %edx
c0003636:	8d 90 d8 e6 ff ff    	lea    -0x1928(%eax),%edx
c000363c:	52                   	push   %edx
c000363d:	6a 36                	push   $0x36
c000363f:	8d 90 d1 e6 ff ff    	lea    -0x192f(%eax),%edx
c0003645:	52                   	push   %edx
c0003646:	89 c3                	mov    %eax,%ebx
c0003648:	e8 f3 eb ff ff       	call   c0002240 <panic_spin>
c000364d:	83 c4 10             	add    $0x10,%esp
c0003650:	8b 45 08             	mov    0x8(%ebp),%eax
c0003653:	8b 40 04             	mov    0x4(%eax),%eax
c0003656:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0003659:	8b 45 08             	mov    0x8(%ebp),%eax
c000365c:	8b 40 04             	mov    0x4(%eax),%eax
c000365f:	83 ec 0c             	sub    $0xc,%esp
c0003662:	50                   	push   %eax
c0003663:	e8 5d ff ff ff       	call   c00035c5 <list_remove>
c0003668:	83 c4 10             	add    $0x10,%esp
c000366b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000366e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0003671:	c9                   	leave  
c0003672:	c3                   	ret    

c0003673 <list_empty>:
c0003673:	55                   	push   %ebp
c0003674:	89 e5                	mov    %esp,%ebp
c0003676:	e8 9d e4 ff ff       	call   c0001b18 <__x86.get_pc_thunk.ax>
c000367b:	05 85 29 00 00       	add    $0x2985,%eax
c0003680:	8b 45 08             	mov    0x8(%ebp),%eax
c0003683:	8b 40 04             	mov    0x4(%eax),%eax
c0003686:	8b 55 08             	mov    0x8(%ebp),%edx
c0003689:	83 c2 08             	add    $0x8,%edx
c000368c:	39 d0                	cmp    %edx,%eax
c000368e:	0f 94 c0             	sete   %al
c0003691:	0f b6 c0             	movzbl %al,%eax
c0003694:	5d                   	pop    %ebp
c0003695:	c3                   	ret    

c0003696 <list_len>:
c0003696:	55                   	push   %ebp
c0003697:	89 e5                	mov    %esp,%ebp
c0003699:	83 ec 10             	sub    $0x10,%esp
c000369c:	e8 77 e4 ff ff       	call   c0001b18 <__x86.get_pc_thunk.ax>
c00036a1:	05 5f 29 00 00       	add    $0x295f,%eax
c00036a6:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c00036ad:	8b 45 08             	mov    0x8(%ebp),%eax
c00036b0:	8b 40 04             	mov    0x4(%eax),%eax
c00036b3:	89 45 fc             	mov    %eax,-0x4(%ebp)
c00036b6:	eb 0d                	jmp    c00036c5 <list_len+0x2f>
c00036b8:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00036bb:	8b 40 04             	mov    0x4(%eax),%eax
c00036be:	89 45 fc             	mov    %eax,-0x4(%ebp)
c00036c1:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
c00036c5:	8b 45 08             	mov    0x8(%ebp),%eax
c00036c8:	83 c0 08             	add    $0x8,%eax
c00036cb:	39 45 fc             	cmp    %eax,-0x4(%ebp)
c00036ce:	75 e8                	jne    c00036b8 <list_len+0x22>
c00036d0:	8b 45 f8             	mov    -0x8(%ebp),%eax
c00036d3:	c9                   	leave  
c00036d4:	c3                   	ret    

c00036d5 <list_traversal>:
c00036d5:	55                   	push   %ebp
c00036d6:	89 e5                	mov    %esp,%ebp
c00036d8:	83 ec 18             	sub    $0x18,%esp
c00036db:	e8 38 e4 ff ff       	call   c0001b18 <__x86.get_pc_thunk.ax>
c00036e0:	05 20 29 00 00       	add    $0x2920,%eax
c00036e5:	8b 45 08             	mov    0x8(%ebp),%eax
c00036e8:	8b 40 04             	mov    0x4(%eax),%eax
c00036eb:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00036ee:	ff 75 08             	push   0x8(%ebp)
c00036f1:	e8 7d ff ff ff       	call   c0003673 <list_empty>
c00036f6:	83 c4 04             	add    $0x4,%esp
c00036f9:	85 c0                	test   %eax,%eax
c00036fb:	74 2a                	je     c0003727 <list_traversal+0x52>
c00036fd:	b8 00 00 00 00       	mov    $0x0,%eax
c0003702:	eb 33                	jmp    c0003737 <list_traversal+0x62>
c0003704:	83 ec 08             	sub    $0x8,%esp
c0003707:	ff 75 10             	push   0x10(%ebp)
c000370a:	ff 75 f4             	push   -0xc(%ebp)
c000370d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003710:	ff d0                	call   *%eax
c0003712:	83 c4 10             	add    $0x10,%esp
c0003715:	85 c0                	test   %eax,%eax
c0003717:	74 05                	je     c000371e <list_traversal+0x49>
c0003719:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000371c:	eb 19                	jmp    c0003737 <list_traversal+0x62>
c000371e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003721:	8b 40 04             	mov    0x4(%eax),%eax
c0003724:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0003727:	8b 45 08             	mov    0x8(%ebp),%eax
c000372a:	83 c0 08             	add    $0x8,%eax
c000372d:	39 45 f4             	cmp    %eax,-0xc(%ebp)
c0003730:	75 d2                	jne    c0003704 <list_traversal+0x2f>
c0003732:	b8 00 00 00 00       	mov    $0x0,%eax
c0003737:	c9                   	leave  
c0003738:	c3                   	ret    

c0003739 <elem_find>:
c0003739:	55                   	push   %ebp
c000373a:	89 e5                	mov    %esp,%ebp
c000373c:	83 ec 10             	sub    $0x10,%esp
c000373f:	e8 d4 e3 ff ff       	call   c0001b18 <__x86.get_pc_thunk.ax>
c0003744:	05 bc 28 00 00       	add    $0x28bc,%eax
c0003749:	8b 45 08             	mov    0x8(%ebp),%eax
c000374c:	8b 40 04             	mov    0x4(%eax),%eax
c000374f:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0003752:	eb 18                	jmp    c000376c <elem_find+0x33>
c0003754:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0003757:	3b 45 0c             	cmp    0xc(%ebp),%eax
c000375a:	75 07                	jne    c0003763 <elem_find+0x2a>
c000375c:	b8 01 00 00 00       	mov    $0x1,%eax
c0003761:	eb 19                	jmp    c000377c <elem_find+0x43>
c0003763:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0003766:	8b 40 04             	mov    0x4(%eax),%eax
c0003769:	89 45 fc             	mov    %eax,-0x4(%ebp)
c000376c:	8b 45 08             	mov    0x8(%ebp),%eax
c000376f:	83 c0 08             	add    $0x8,%eax
c0003772:	39 45 fc             	cmp    %eax,-0x4(%ebp)
c0003775:	75 dd                	jne    c0003754 <elem_find+0x1b>
c0003777:	b8 00 00 00 00       	mov    $0x0,%eax
c000377c:	c9                   	leave  
c000377d:	c3                   	ret    
c000377e:	66 90                	xchg   %ax,%ax

c0003780 <switch_to>:
c0003780:	56                   	push   %esi
c0003781:	57                   	push   %edi
c0003782:	53                   	push   %ebx
c0003783:	55                   	push   %ebp
c0003784:	8b 44 24 14          	mov    0x14(%esp),%eax
c0003788:	89 20                	mov    %esp,(%eax)
c000378a:	8b 44 24 18          	mov    0x18(%esp),%eax
c000378e:	8b 20                	mov    (%eax),%esp
c0003790:	5d                   	pop    %ebp
c0003791:	5b                   	pop    %ebx
c0003792:	5f                   	pop    %edi
c0003793:	5e                   	pop    %esi
c0003794:	c3                   	ret    
