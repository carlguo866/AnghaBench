; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_sdl.c_audio_callback.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_sdl.c_audio_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { i32, i64 }

@.str = private unnamed_addr constant [38 x i8] c"SDL audio callback not sample aligned\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @audio_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audio_callback(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ao*, align 8
  %8 = alloca [1 x i8*], align 8
  %9 = alloca double, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.ao*
  store %struct.ao* %11, %struct.ao** %7, align 8
  %12 = getelementptr inbounds [1 x i8*], [1 x i8*]* %8, i64 0, i64 0
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.ao*, %struct.ao** %7, align 8
  %16 = getelementptr inbounds %struct.ao, %struct.ao* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = srem i32 %14, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.ao*, %struct.ao** %7, align 8
  %22 = call i32 @MP_ERR(%struct.ao* %21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %3
  %24 = load i32, i32* %6, align 4
  %25 = mul nsw i32 2, %24
  %26 = sitofp i32 %25 to double
  %27 = load %struct.ao*, %struct.ao** %7, align 8
  %28 = getelementptr inbounds %struct.ao, %struct.ao* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = sitofp i64 %29 to double
  %31 = fdiv double %26, %30
  store double %31, double* %9, align 8
  %32 = load %struct.ao*, %struct.ao** %7, align 8
  %33 = getelementptr inbounds [1 x i8*], [1 x i8*]* %8, i64 0, i64 0
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.ao*, %struct.ao** %7, align 8
  %36 = getelementptr inbounds %struct.ao, %struct.ao* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sdiv i32 %34, %37
  %39 = call i64 (...) @mp_time_us()
  %40 = sitofp i64 %39 to double
  %41 = load double, double* %9, align 8
  %42 = fmul double 1.000000e+06, %41
  %43 = fadd double %40, %42
  %44 = fptosi double %43 to i64
  %45 = call i32 @ao_read_data(%struct.ao* %32, i8** %33, i32 %38, i64 %44)
  ret void
}

declare dso_local i32 @MP_ERR(%struct.ao*, i8*) #1

declare dso_local i32 @ao_read_data(%struct.ao*, i8**, i32, i64) #1

declare dso_local i64 @mp_time_us(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
