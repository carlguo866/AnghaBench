; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_do_stats.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_do_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32 }
%struct.arg = type { i32 }
%struct.in_ev = type { i32 }

@do_stats.stat_buf = internal global [32768 x i8] zeroinitializer, align 16
@TLS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_stats(%struct.command* %0, i32 %1, %struct.arg* %2, %struct.in_ev* %3) #0 {
  %5 = alloca %struct.command*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.arg*, align 8
  %8 = alloca %struct.in_ev*, align 8
  store %struct.command* %0, %struct.command** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.arg* %2, %struct.arg** %7, align 8
  store %struct.in_ev* %3, %struct.in_ev** %8, align 8
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i32, i32* @TLS, align 4
  %15 = call i32 @tgl_print_stat(i32 %14, i8* getelementptr inbounds ([32768 x i8], [32768 x i8]* @do_stats.stat_buf, i64 0, i64 0), i32 32767)
  %16 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %17 = icmp ne %struct.in_ev* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %20 = call i32 @mprint_start(%struct.in_ev* %19)
  br label %21

21:                                               ; preds = %18, %4
  %22 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %23 = call i32 @mprintf(%struct.in_ev* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([32768 x i8], [32768 x i8]* @do_stats.stat_buf, i64 0, i64 0))
  %24 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %25 = icmp ne %struct.in_ev* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %28 = call i32 @mprint_end(%struct.in_ev* %27)
  br label %29

29:                                               ; preds = %26, %21
  %30 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %31 = icmp ne %struct.in_ev* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @stdout, align 4
  %34 = call i32 @fflush(i32 %33)
  br label %35

35:                                               ; preds = %32, %29
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tgl_print_stat(i32, i8*, i32) #1

declare dso_local i32 @mprint_start(%struct.in_ev*) #1

declare dso_local i32 @mprintf(%struct.in_ev*, i8*, i8*) #1

declare dso_local i32 @mprint_end(%struct.in_ev*) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
