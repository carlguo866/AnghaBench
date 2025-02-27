; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_smscoreapi.c_smscore_createbuffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_smscoreapi.c_smscore_createbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smscore_buffer_t = type { i32, i64, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"kmalloc(...) failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.smscore_buffer_t* (i32*, i8*, i64)* @smscore_createbuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.smscore_buffer_t* @smscore_createbuffer(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.smscore_buffer_t*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.smscore_buffer_t*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.smscore_buffer_t* @kmalloc(i32 24, i32 %9)
  store %struct.smscore_buffer_t* %10, %struct.smscore_buffer_t** %8, align 8
  %11 = load %struct.smscore_buffer_t*, %struct.smscore_buffer_t** %8, align 8
  %12 = icmp ne %struct.smscore_buffer_t* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = call i32 @sms_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store %struct.smscore_buffer_t* null, %struct.smscore_buffer_t** %4, align 8
  br label %38

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = load %struct.smscore_buffer_t*, %struct.smscore_buffer_t** %8, align 8
  %18 = getelementptr inbounds %struct.smscore_buffer_t, %struct.smscore_buffer_t* %17, i32 0, i32 2
  store i32* %16, i32** %18, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to i32*
  %22 = ptrtoint i32* %19 to i64
  %23 = ptrtoint i32* %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 4
  %26 = trunc i64 %25 to i32
  %27 = load %struct.smscore_buffer_t*, %struct.smscore_buffer_t** %8, align 8
  %28 = getelementptr inbounds %struct.smscore_buffer_t, %struct.smscore_buffer_t* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.smscore_buffer_t*, %struct.smscore_buffer_t** %8, align 8
  %31 = getelementptr inbounds %struct.smscore_buffer_t, %struct.smscore_buffer_t* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %29, %33
  %35 = load %struct.smscore_buffer_t*, %struct.smscore_buffer_t** %8, align 8
  %36 = getelementptr inbounds %struct.smscore_buffer_t, %struct.smscore_buffer_t* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load %struct.smscore_buffer_t*, %struct.smscore_buffer_t** %8, align 8
  store %struct.smscore_buffer_t* %37, %struct.smscore_buffer_t** %4, align 8
  br label %38

38:                                               ; preds = %15, %13
  %39 = load %struct.smscore_buffer_t*, %struct.smscore_buffer_t** %4, align 8
  ret %struct.smscore_buffer_t* %39
}

declare dso_local %struct.smscore_buffer_t* @kmalloc(i32, i32) #1

declare dso_local i32 @sms_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
