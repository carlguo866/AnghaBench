; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via82c686.c_via_buildsgdt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via82c686.c_via_buildsgdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_chinfo = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@VIA_DMAOP_EOL = common dso_local global i32 0, align 4
@VIA_DMAOP_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.via_chinfo*)* @via_buildsgdt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via_buildsgdt(%struct.via_chinfo* %0) #0 {
  %2 = alloca %struct.via_chinfo*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.via_chinfo* %0, %struct.via_chinfo** %2, align 8
  %8 = load %struct.via_chinfo*, %struct.via_chinfo** %2, align 8
  %9 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  %11 = load %struct.via_chinfo*, %struct.via_chinfo** %2, align 8
  %12 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @sndbuf_getsize(i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = sdiv i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.via_chinfo*, %struct.via_chinfo** %2, align 8
  %18 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @sndbuf_getbufaddr(i32 %19)
  store i32 %20, i32* %3, align 4
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %58, %1
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %61

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = sub nsw i32 %27, 1
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @VIA_DMAOP_EOL, align 4
  br label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @VIA_DMAOP_FLAG, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %7, align 4
  %39 = mul nsw i32 %37, %38
  %40 = add nsw i32 %36, %39
  %41 = load %struct.via_chinfo*, %struct.via_chinfo** %2, align 8
  %42 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %40, i32* %47, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.via_chinfo*, %struct.via_chinfo** %2, align 8
  %52 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  store i32 %50, i32* %57, align 4
  br label %58

58:                                               ; preds = %34
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %21

61:                                               ; preds = %21
  ret i32 0
}

declare dso_local i32 @sndbuf_getsize(i32) #1

declare dso_local i32 @sndbuf_getbufaddr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
