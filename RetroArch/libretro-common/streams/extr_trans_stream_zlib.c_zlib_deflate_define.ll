; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/streams/extr_trans_stream_zlib.c_zlib_deflate_define.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/streams/extr_trans_stream_zlib.c_zlib_deflate_define.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zlib_trans_stream = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"level\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @zlib_deflate_define to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zlib_deflate_define(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.zlib_trans_stream*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.zlib_trans_stream*
  store %struct.zlib_trans_stream* %10, %struct.zlib_trans_stream** %8, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i64 @string_is_equal(i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load %struct.zlib_trans_stream*, %struct.zlib_trans_stream** %8, align 8
  %16 = icmp ne %struct.zlib_trans_stream* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i64, i64* %7, align 8
  %19 = trunc i64 %18 to i32
  %20 = load %struct.zlib_trans_stream*, %struct.zlib_trans_stream** %8, align 8
  %21 = getelementptr inbounds %struct.zlib_trans_stream, %struct.zlib_trans_stream* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %17, %14
  store i32 1, i32* %4, align 4
  br label %24

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %23, %22
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i64 @string_is_equal(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
