; ModuleID = '/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-cmd.c_ncsi_cmd_handler_sp.c'
source_filename = "/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-cmd.c_ncsi_cmd_handler_sp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ncsi_cmd_arg = type { i32* }
%struct.ncsi_cmd_sp_pkt = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.ncsi_cmd_arg*)* @ncsi_cmd_handler_sp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ncsi_cmd_handler_sp(%struct.sk_buff* %0, %struct.ncsi_cmd_arg* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ncsi_cmd_arg*, align 8
  %5 = alloca %struct.ncsi_cmd_sp_pkt*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.ncsi_cmd_arg* %1, %struct.ncsi_cmd_arg** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = call %struct.ncsi_cmd_sp_pkt* @skb_put_zero(%struct.sk_buff* %6, i32 8)
  store %struct.ncsi_cmd_sp_pkt* %7, %struct.ncsi_cmd_sp_pkt** %5, align 8
  %8 = load %struct.ncsi_cmd_arg*, %struct.ncsi_cmd_arg** %4, align 8
  %9 = getelementptr inbounds %struct.ncsi_cmd_arg, %struct.ncsi_cmd_arg* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ncsi_cmd_sp_pkt*, %struct.ncsi_cmd_sp_pkt** %5, align 8
  %14 = getelementptr inbounds %struct.ncsi_cmd_sp_pkt, %struct.ncsi_cmd_sp_pkt* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.ncsi_cmd_sp_pkt*, %struct.ncsi_cmd_sp_pkt** %5, align 8
  %16 = getelementptr inbounds %struct.ncsi_cmd_sp_pkt, %struct.ncsi_cmd_sp_pkt* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.ncsi_cmd_arg*, %struct.ncsi_cmd_arg** %4, align 8
  %19 = call i32 @ncsi_cmd_build_header(i32* %17, %struct.ncsi_cmd_arg* %18)
  ret i32 0
}

declare dso_local %struct.ncsi_cmd_sp_pkt* @skb_put_zero(%struct.sk_buff*, i32) #1

declare dso_local i32 @ncsi_cmd_build_header(i32*, %struct.ncsi_cmd_arg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
