; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_sync.c_ip_vs_proc_str.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_sync.c_ip_vs_proc_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"BACKUP, bogus par.data len > %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"BACKUP, Par.data found twice 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32**, i32, i32*, i32)* @ip_vs_proc_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_proc_str(i32* %0, i32 %1, i32* %2, i32** %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32** %3, i32*** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %13, align 4
  %18 = icmp ugt i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %7
  %20 = load i32, i32* %13, align 4
  %21 = call i32 @IP_VS_DBG(i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %8, align 4
  br label %44

24:                                               ; preds = %7
  %25 = load i32*, i32** %14, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %15, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load i32, i32* %15, align 4
  %32 = call i32 @IP_VS_DBG(i32 2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %8, align 4
  br label %44

35:                                               ; preds = %24
  %36 = load i32, i32* %10, align 4
  %37 = load i32*, i32** %11, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = load i32**, i32*** %12, align 8
  store i32* %38, i32** %39, align 8
  %40 = load i32, i32* %15, align 4
  %41 = load i32*, i32** %14, align 8
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %40
  store i32 %43, i32* %41, align 4
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %35, %30, %19
  %45 = load i32, i32* %8, align 4
  ret i32 %45
}

declare dso_local i32 @IP_VS_DBG(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
