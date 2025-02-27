; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_io.c_br_sslio_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_io.c_br_sslio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@BR_SSL_SENDAPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_sslio_write(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %41

13:                                               ; preds = %3
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = load i32, i32* @BR_SSL_SENDAPP, align 4
  %16 = call i64 @run_until(%struct.TYPE_4__* %14, i32 %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 -1, i32* %4, align 4
  br label %41

19:                                               ; preds = %13
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @br_ssl_engine_sendapp_buf(i32 %22, i64* %9)
  store i8* %23, i8** %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp ugt i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i64, i64* %7, align 8
  store i64 %28, i64* %9, align 8
  br label %29

29:                                               ; preds = %27, %19
  %30 = load i8*, i8** %8, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @memcpy(i8* %30, i8* %31, i64 %32)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @br_ssl_engine_sendapp_ack(i32 %36, i64 %37)
  %39 = load i64, i64* %9, align 8
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %29, %18, %12
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i64 @run_until(%struct.TYPE_4__*, i32) #1

declare dso_local i8* @br_ssl_engine_sendapp_buf(i32, i64*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @br_ssl_engine_sendapp_ack(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
