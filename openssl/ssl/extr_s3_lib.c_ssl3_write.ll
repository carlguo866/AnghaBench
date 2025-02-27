; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_s3_lib.c_ssl3_write.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_s3_lib.c_ssl3_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_9__*, i32, i8*, i64, i64*)* }
%struct.TYPE_7__ = type { i64 }

@SSL3_RT_APPLICATION_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl3_write(%struct.TYPE_9__* %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %9 = call i32 (...) @clear_sys_error()
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = call i32 @ssl3_renegotiate_check(%struct.TYPE_9__* %16, i32 0)
  br label %18

18:                                               ; preds = %15, %4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32 (%struct.TYPE_9__*, i32, i8*, i64, i64*)*, i32 (%struct.TYPE_9__*, i32, i8*, i64, i64*)** %22, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = load i32, i32* @SSL3_RT_APPLICATION_DATA, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64*, i64** %8, align 8
  %29 = call i32 %23(%struct.TYPE_9__* %24, i32 %25, i8* %26, i64 %27, i64* %28)
  ret i32 %29
}

declare dso_local i32 @clear_sys_error(...) #1

declare dso_local i32 @ssl3_renegotiate_check(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
