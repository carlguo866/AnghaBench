; ModuleID = '/home/carl/AnghaBench/vlc/src/stream_output/extr_sdp.c_vsdp_AddAttribute.c'
source_filename = "/home/carl/AnghaBench/vlc/src/stream_output/extr_sdp.c_vsdp_AddAttribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_memstream = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"a=%s\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"a=%s:\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vlc_memstream*, i8*, i8*, i32)* @vsdp_AddAttribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vsdp_AddAttribute(%struct.vlc_memstream* noalias %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.vlc_memstream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.vlc_memstream* %0, %struct.vlc_memstream** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i8*, i8** %7, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %4
  %12 = load %struct.vlc_memstream*, %struct.vlc_memstream** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @vlc_memstream_printf(%struct.vlc_memstream* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %13)
  br label %25

15:                                               ; preds = %4
  %16 = load %struct.vlc_memstream*, %struct.vlc_memstream** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @vlc_memstream_printf(%struct.vlc_memstream* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  %19 = load %struct.vlc_memstream*, %struct.vlc_memstream** %5, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @vlc_memstream_vprintf(%struct.vlc_memstream* %19, i8* %20, i32 %21)
  %23 = load %struct.vlc_memstream*, %struct.vlc_memstream** %5, align 8
  %24 = call i32 @vlc_memstream_puts(%struct.vlc_memstream* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %25

25:                                               ; preds = %15, %11
  ret void
}

declare dso_local i32 @vlc_memstream_printf(%struct.vlc_memstream*, i8*, i8*) #1

declare dso_local i32 @vlc_memstream_vprintf(%struct.vlc_memstream*, i8*, i32) #1

declare dso_local i32 @vlc_memstream_puts(%struct.vlc_memstream*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
