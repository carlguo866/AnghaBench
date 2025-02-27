; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bbr.c_bbr_bdp.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bbr.c_bbr_bdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.bbr = type { i32 }

@TCP_INIT_CWND = common dso_local global i32 0, align 4
@BBR_SCALE = common dso_local global i32 0, align 4
@BW_UNIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i32, i32)* @bbr_bdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bbr_bdp(%struct.sock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bbr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.sock*, %struct.sock** %5, align 8
  %12 = call %struct.bbr* @inet_csk_ca(%struct.sock* %11)
  store %struct.bbr* %12, %struct.bbr** %8, align 8
  %13 = load %struct.bbr*, %struct.bbr** %8, align 8
  %14 = getelementptr inbounds %struct.bbr, %struct.bbr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, -1
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @TCP_INIT_CWND, align 4
  store i32 %21, i32* %4, align 4
  br label %39

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.bbr*, %struct.bbr** %8, align 8
  %25 = getelementptr inbounds %struct.bbr, %struct.bbr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = mul i32 %23, %26
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %7, align 4
  %30 = mul nsw i32 %28, %29
  %31 = load i32, i32* @BBR_SCALE, align 4
  %32 = ashr i32 %30, %31
  %33 = load i32, i32* @BW_UNIT, align 4
  %34 = add nsw i32 %32, %33
  %35 = sub nsw i32 %34, 1
  %36 = load i32, i32* @BW_UNIT, align 4
  %37 = sdiv i32 %35, %36
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %22, %20
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.bbr* @inet_csk_ca(%struct.sock*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
