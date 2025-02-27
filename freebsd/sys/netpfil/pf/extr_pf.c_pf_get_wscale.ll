; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_get_wscale.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_get_wscale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }

@TCP_MAX_WINSHIFT = common dso_local global i32 0, align 4
@PF_WSCALE_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbuf*, i32, i32, i32)* @pf_get_wscale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pf_get_wscale(%struct.mbuf* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [60 x i32], align 16
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %8, align 4
  %16 = shl i32 %15, 2
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp ule i64 %18, 4
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %79

21:                                               ; preds = %4
  %22 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = getelementptr inbounds [60 x i32], [60 x i32]* %11, i64 0, i64 0
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @pf_pull_hdr(%struct.mbuf* %22, i32 %23, i32* %24, i32 %25, i32* null, i32* null, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %79

30:                                               ; preds = %21
  %31 = getelementptr inbounds [60 x i32], [60 x i32]* %11, i64 0, i64 0
  %32 = getelementptr inbounds i32, i32* %31, i64 4
  store i32* %32, i32** %12, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = sub i64 %34, 4
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %76, %30
  %38 = load i32, i32* %10, align 4
  %39 = icmp sge i32 %38, 3
  br i1 %39, label %40, label %77

40:                                               ; preds = %37
  %41 = load i32*, i32** %12, align 8
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %61 [
    i32 130, label %43
    i32 129, label %43
    i32 128, label %48
  ]

43:                                               ; preds = %40, %40
  %44 = load i32*, i32** %12, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %12, align 8
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %10, align 4
  br label %76

48:                                               ; preds = %40
  %49 = load i32*, i32** %12, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* @TCP_MAX_WINSHIFT, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* @TCP_MAX_WINSHIFT, align 4
  store i32 %56, i32* %14, align 4
  br label %57

57:                                               ; preds = %55, %48
  %58 = load i32, i32* @PF_WSCALE_FLAG, align 4
  %59 = load i32, i32* %14, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %14, align 4
  br label %61

61:                                               ; preds = %40, %57
  %62 = load i32*, i32** %12, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp slt i32 %65, 2
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  store i32 2, i32* %13, align 4
  br label %68

68:                                               ; preds = %67, %61
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %10, align 4
  %71 = sub nsw i32 %70, %69
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load i32*, i32** %12, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32* %75, i32** %12, align 8
  br label %76

76:                                               ; preds = %68, %43
  br label %37

77:                                               ; preds = %37
  %78 = load i32, i32* %14, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %77, %29, %20
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @pf_pull_hdr(%struct.mbuf*, i32, i32*, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
