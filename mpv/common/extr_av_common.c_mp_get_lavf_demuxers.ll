; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_av_common.c_mp_get_lavf_demuxers.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_av_common.c_mp_get_lavf_demuxers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @mp_get_lavf_demuxers() #0 {
  %1 = alloca i8**, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  store i8** null, i8*** %1, align 8
  store i8* null, i8** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %10, %0
  %6 = call %struct.TYPE_3__* @av_demuxer_iterate(i8** %2)
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %4, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = icmp ne %struct.TYPE_3__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  br label %18

10:                                               ; preds = %5
  %11 = load i8**, i8*** %1, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32* @talloc_strdup(i32* null, i32 %15)
  %17 = call i32 @MP_TARRAY_APPEND(i32* null, i8** %11, i32 %12, i32* %16)
  br label %5

18:                                               ; preds = %9
  %19 = load i8**, i8*** %1, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @MP_TARRAY_APPEND(i32* null, i8** %19, i32 %20, i32* null)
  %22 = load i8**, i8*** %1, align 8
  ret i8** %22
}

declare dso_local %struct.TYPE_3__* @av_demuxer_iterate(i8**) #1

declare dso_local i32 @MP_TARRAY_APPEND(i32*, i8**, i32, i32*) #1

declare dso_local i32* @talloc_strdup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
