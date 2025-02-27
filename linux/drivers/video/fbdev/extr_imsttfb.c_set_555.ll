; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_imsttfb.c_set_555.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_imsttfb.c_set_555.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imstt_par = type { i64, i32* }

@IBM = common dso_local global i64 0, align 8
@PIDXHI = common dso_local global i64 0, align 8
@BPP16 = common dso_local global i32 0, align 4
@PIDXLO = common dso_local global i64 0, align 8
@PIDXDATA = common dso_local global i64 0, align 8
@TVPIRTCC = common dso_local global i32 0, align 4
@TVPADDRW = common dso_local global i64 0, align 8
@TVPIDATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imstt_par*)* @set_555 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_555(%struct.imstt_par* %0) #0 {
  %2 = alloca %struct.imstt_par*, align 8
  store %struct.imstt_par* %0, %struct.imstt_par** %2, align 8
  %3 = load %struct.imstt_par*, %struct.imstt_par** %2, align 8
  %4 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @IBM, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %28

8:                                                ; preds = %1
  %9 = load %struct.imstt_par*, %struct.imstt_par** %2, align 8
  %10 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* @PIDXHI, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  store i32 0, i32* %13, align 4
  %14 = call i32 (...) @eieio()
  %15 = load i32, i32* @BPP16, align 4
  %16 = load %struct.imstt_par*, %struct.imstt_par** %2, align 8
  %17 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @PIDXLO, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32 %15, i32* %20, align 4
  %21 = call i32 (...) @eieio()
  %22 = load %struct.imstt_par*, %struct.imstt_par** %2, align 8
  %23 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @PIDXDATA, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32 1, i32* %26, align 4
  %27 = call i32 (...) @eieio()
  br label %42

28:                                               ; preds = %1
  %29 = load i32, i32* @TVPIRTCC, align 4
  %30 = load %struct.imstt_par*, %struct.imstt_par** %2, align 8
  %31 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @TVPADDRW, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32 %29, i32* %34, align 4
  %35 = call i32 (...) @eieio()
  %36 = load %struct.imstt_par*, %struct.imstt_par** %2, align 8
  %37 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @TVPIDATA, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32 68, i32* %40, align 4
  %41 = call i32 (...) @eieio()
  br label %42

42:                                               ; preds = %28, %8
  ret void
}

declare dso_local i32 @eieio(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
