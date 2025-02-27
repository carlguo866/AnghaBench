; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_sha1.c_sha1_hmac_finish.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_sha1.c_sha1_hmac_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sha1_hmac_finish(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [20 x i8], align 16
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %8 = call i32 @sha1_finish(%struct.TYPE_6__* %6, i8* %7)
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = call i32 @sha1_starts(%struct.TYPE_6__* %9)
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @sha1_update(%struct.TYPE_6__* %11, i8* %14, i32 64)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %18 = call i32 @sha1_update(%struct.TYPE_6__* %16, i8* %17, i32 20)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @sha1_finish(%struct.TYPE_6__* %19, i8* %20)
  %22 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %23 = call i32 @memset(i8* %22, i32 0, i32 20)
  ret void
}

declare dso_local i32 @sha1_finish(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @sha1_starts(%struct.TYPE_6__*) #1

declare dso_local i32 @sha1_update(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
