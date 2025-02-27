; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/extr_bpf_dbg.c_bpf_handle_breakpoint.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/extr_bpf_dbg.c_bpf_handle_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_regs = type { i64 }
%struct.sock_filter = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"-- register dump --\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"-- packet dump --\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"(breakpoint)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_regs*, %struct.sock_filter*, i32*, i32, i32)* @bpf_handle_breakpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_handle_breakpoint(%struct.bpf_regs* %0, %struct.sock_filter* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.bpf_regs*, align 8
  %7 = alloca %struct.sock_filter*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bpf_regs* %0, %struct.bpf_regs** %6, align 8
  store %struct.sock_filter* %1, %struct.sock_filter** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = call i32 @rl_printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.bpf_regs*, %struct.bpf_regs** %6, align 8
  %13 = load %struct.sock_filter*, %struct.sock_filter** %7, align 8
  %14 = load %struct.bpf_regs*, %struct.bpf_regs** %6, align 8
  %15 = getelementptr inbounds %struct.bpf_regs, %struct.bpf_regs* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %13, i64 %16
  %18 = call i32 @bpf_dump_curr(%struct.bpf_regs* %12, %struct.sock_filter* %17)
  %19 = call i32 @rl_printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @bpf_dump_pkt(i32* %20, i32 %21, i32 %22)
  %24 = call i32 @rl_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  ret i32 1
}

declare dso_local i32 @rl_printf(i8*) #1

declare dso_local i32 @bpf_dump_curr(%struct.bpf_regs*, %struct.sock_filter*) #1

declare dso_local i32 @bpf_dump_pkt(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
