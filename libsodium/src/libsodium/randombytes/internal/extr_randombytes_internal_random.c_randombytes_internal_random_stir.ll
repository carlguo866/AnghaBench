; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/randombytes/internal/extr_randombytes_internal_random.c_randombytes_internal_random_stir.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/randombytes/internal/extr_randombytes_internal_random.c_randombytes_internal_random_stir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i64, i32 }
%struct.TYPE_4__ = type { i32, i64, i64, i32, i32 }

@stream = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@global = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @randombytes_internal_random_stir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @randombytes_internal_random_stir() #0 {
  %1 = call i64 (...) @sodium_hrtime()
  store i64 %1, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @stream, i32 0, i32 0), align 8
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @stream, i32 0, i32 0), align 8
  %3 = icmp ne i64 %2, 0
  %4 = zext i1 %3 to i32
  %5 = call i32 @assert(i32 %4)
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @stream, i32 0, i32 4), align 8
  %7 = call i32 @memset(i32 %6, i32 0, i32 4)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @stream, i32 0, i32 1), align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @global, i32 0, i32 0), align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = call i32 (...) @randombytes_internal_random_init()
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @global, i32 0, i32 0), align 8
  br label %12

12:                                               ; preds = %10, %0
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @global, i32 0, i32 3), align 8
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @global, i32 0, i32 3), align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @stream, i32 0, i32 3), align 8
  %18 = call i64 @safe_read(i32 %16, i64 %17, i32 8)
  %19 = icmp ne i64 %18, 8
  br i1 %19, label %20, label %22

20:                                               ; preds = %15, %12
  %21 = call i32 (...) @sodium_misuse()
  br label %22

22:                                               ; preds = %20, %15
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @stream, i32 0, i32 2), align 8
  ret void
}

declare dso_local i64 @sodium_hrtime(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @randombytes_internal_random_init(...) #1

declare dso_local i64 @safe_read(i32, i64, i32) #1

declare dso_local i32 @sodium_misuse(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
