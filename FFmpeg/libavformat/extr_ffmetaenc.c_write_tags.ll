; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_ffmetaenc.c_write_tags.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_ffmetaenc.c_write_tags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AV_DICT_IGNORE_SUFFIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @write_tags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_tags(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  br label %6

6:                                                ; preds = %12, %2
  %7 = load i32*, i32** %4, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %9 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %10 = call %struct.TYPE_4__* @av_dict_get(i32* %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %8, i32 %9)
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %5, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %12, label %27

12:                                               ; preds = %6
  %13 = load i32*, i32** %3, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @write_escape_str(i32* %13, i32 %16)
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @avio_w8(i32* %18, i8 signext 61)
  %20 = load i32*, i32** %3, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @write_escape_str(i32* %20, i32 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @avio_w8(i32* %25, i8 signext 10)
  br label %6

27:                                               ; preds = %6
  ret void
}

declare dso_local %struct.TYPE_4__* @av_dict_get(i32*, i8*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @write_escape_str(i32*, i32) #1

declare dso_local i32 @avio_w8(i32*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
