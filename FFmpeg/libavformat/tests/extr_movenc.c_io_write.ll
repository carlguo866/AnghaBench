; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/tests/extr_movenc.c_io_write.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/tests/extr_movenc.c_io_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@out_size = common dso_local global i32 0, align 4
@md5 = common dso_local global i32 0, align 4
@out = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32)* @io_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_write(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @out_size, align 4
  %9 = add nsw i32 %8, %7
  store i32 %9, i32* @out_size, align 4
  %10 = load i32, i32* @md5, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @av_md5_update(i32 %10, i32* %11, i32 %12)
  %14 = load i64, i64* @out, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i64, i64* @out, align 8
  %20 = call i32 @fwrite(i32* %17, i32 1, i32 %18, i64 %19)
  br label %21

21:                                               ; preds = %16, %3
  %22 = load i32, i32* %6, align 4
  ret i32 %22
}

declare dso_local i32 @av_md5_update(i32, i32*, i32) #1

declare dso_local i32 @fwrite(i32*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
