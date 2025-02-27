; ModuleID = '/home/carl/AnghaBench/linux/net/llc/extr_llc_pdu.c_llc_pdu_decode_pdu_type.c'
source_filename = "/home/carl/AnghaBench/linux/net/llc/extr_llc_pdu.c_llc_pdu_decode_pdu_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.llc_pdu_un = type { i32 }

@LLC_PDU_TYPE_U = common dso_local global i32 0, align 4
@LLC_PDU_TYPE_S = common dso_local global i32 0, align 4
@LLC_PDU_TYPE_I = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32*)* @llc_pdu_decode_pdu_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @llc_pdu_decode_pdu_type(%struct.sk_buff* %0, i32* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.llc_pdu_un*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = call %struct.llc_pdu_un* @llc_pdu_un_hdr(%struct.sk_buff* %6)
  store %struct.llc_pdu_un* %7, %struct.llc_pdu_un** %5, align 8
  %8 = load %struct.llc_pdu_un*, %struct.llc_pdu_un** %5, align 8
  %9 = getelementptr inbounds %struct.llc_pdu_un, %struct.llc_pdu_un* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %2
  %14 = load %struct.llc_pdu_un*, %struct.llc_pdu_un** %5, align 8
  %15 = getelementptr inbounds %struct.llc_pdu_un, %struct.llc_pdu_un* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @LLC_PDU_TYPE_U, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @LLC_PDU_TYPE_U, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load i32, i32* @LLC_PDU_TYPE_U, align 4
  %23 = load i32*, i32** %4, align 8
  store i32 %22, i32* %23, align 4
  br label %27

24:                                               ; preds = %13
  %25 = load i32, i32* @LLC_PDU_TYPE_S, align 4
  %26 = load i32*, i32** %4, align 8
  store i32 %25, i32* %26, align 4
  br label %27

27:                                               ; preds = %24, %21
  br label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @LLC_PDU_TYPE_I, align 4
  %30 = load i32*, i32** %4, align 8
  store i32 %29, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %27
  ret void
}

declare dso_local %struct.llc_pdu_un* @llc_pdu_un_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
