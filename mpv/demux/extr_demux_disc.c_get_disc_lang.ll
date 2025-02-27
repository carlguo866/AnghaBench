; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_disc.c_get_disc_lang.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_disc.c_get_disc_lang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream = type { i32 }
%struct.sh_stream = type { i64, i32, i32 }
%struct.stream_lang_req = type { i64, i32, i64* }

@STREAM_SUB = common dso_local global i64 0, align 8
@STREAM_CTRL_GET_LANG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stream*, %struct.sh_stream*, i32)* @get_disc_lang to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_disc_lang(%struct.stream* %0, %struct.sh_stream* %1, i32 %2) #0 {
  %4 = alloca %struct.stream*, align 8
  %5 = alloca %struct.sh_stream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.stream_lang_req, align 8
  store %struct.stream* %0, %struct.stream** %4, align 8
  store %struct.sh_stream* %1, %struct.sh_stream** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = getelementptr inbounds %struct.stream_lang_req, %struct.stream_lang_req* %7, i32 0, i32 0
  %9 = load %struct.sh_stream*, %struct.sh_stream** %5, align 8
  %10 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %8, align 8
  %12 = getelementptr inbounds %struct.stream_lang_req, %struct.stream_lang_req* %7, i32 0, i32 1
  %13 = load %struct.sh_stream*, %struct.sh_stream** %5, align 8
  %14 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %12, align 8
  %16 = getelementptr inbounds %struct.stream_lang_req, %struct.stream_lang_req* %7, i32 0, i32 2
  store i64* null, i64** %16, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %3
  %20 = load %struct.sh_stream*, %struct.sh_stream** %5, align 8
  %21 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @STREAM_SUB, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.stream_lang_req, %struct.stream_lang_req* %7, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, 31
  %29 = getelementptr inbounds %struct.stream_lang_req, %struct.stream_lang_req* %7, i32 0, i32 1
  store i32 %28, i32* %29, align 8
  br label %30

30:                                               ; preds = %25, %19, %3
  %31 = load %struct.stream*, %struct.stream** %4, align 8
  %32 = load i32, i32* @STREAM_CTRL_GET_LANG, align 4
  %33 = call i32 @stream_control(%struct.stream* %31, i32 %32, %struct.stream_lang_req* %7)
  %34 = getelementptr inbounds %struct.stream_lang_req, %struct.stream_lang_req* %7, i32 0, i32 2
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %30
  %40 = load %struct.sh_stream*, %struct.sh_stream** %5, align 8
  %41 = getelementptr inbounds %struct.stream_lang_req, %struct.stream_lang_req* %7, i32 0, i32 2
  %42 = load i64*, i64** %41, align 8
  %43 = call i32 @talloc_strdup(%struct.sh_stream* %40, i64* %42)
  %44 = load %struct.sh_stream*, %struct.sh_stream** %5, align 8
  %45 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %39, %30
  ret void
}

declare dso_local i32 @stream_control(%struct.stream*, i32, %struct.stream_lang_req*) #1

declare dso_local i32 @talloc_strdup(%struct.sh_stream*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
