; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_xz_dec.c_xz_dec_init.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_xz_dec.c_xz_dec_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xz_dec = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xz_dec* @xz_dec_init(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.xz_dec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.xz_dec*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = call %struct.xz_dec* @calloc(i32 16, i32 1)
  store %struct.xz_dec* %7, %struct.xz_dec** %6, align 8
  %8 = load %struct.xz_dec*, %struct.xz_dec** %6, align 8
  %9 = icmp eq %struct.xz_dec* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.xz_dec* null, %struct.xz_dec** %3, align 8
  br label %32

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.xz_dec*, %struct.xz_dec** %6, align 8
  %14 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32* @xz_dec_lzma2_create(i32 %15, i32 %16)
  %18 = load %struct.xz_dec*, %struct.xz_dec** %6, align 8
  %19 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %18, i32 0, i32 1
  store i32* %17, i32** %19, align 8
  %20 = load %struct.xz_dec*, %struct.xz_dec** %6, align 8
  %21 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %11
  br label %29

25:                                               ; preds = %11
  %26 = load %struct.xz_dec*, %struct.xz_dec** %6, align 8
  %27 = call i32 @xz_dec_reset(%struct.xz_dec* %26)
  %28 = load %struct.xz_dec*, %struct.xz_dec** %6, align 8
  store %struct.xz_dec* %28, %struct.xz_dec** %3, align 8
  br label %32

29:                                               ; preds = %24
  %30 = load %struct.xz_dec*, %struct.xz_dec** %6, align 8
  %31 = call i32 @free(%struct.xz_dec* %30)
  store %struct.xz_dec* null, %struct.xz_dec** %3, align 8
  br label %32

32:                                               ; preds = %29, %25, %10
  %33 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  ret %struct.xz_dec* %33
}

declare dso_local %struct.xz_dec* @calloc(i32, i32) #1

declare dso_local i32* @xz_dec_lzma2_create(i32, i32) #1

declare dso_local i32 @xz_dec_reset(%struct.xz_dec*) #1

declare dso_local i32 @free(%struct.xz_dec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
