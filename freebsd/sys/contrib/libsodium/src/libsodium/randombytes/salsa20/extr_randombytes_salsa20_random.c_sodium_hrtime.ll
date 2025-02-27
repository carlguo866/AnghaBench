; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/randombytes/salsa20/extr_randombytes_salsa20_random.c_sodium_hrtime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/randombytes/salsa20/extr_randombytes_salsa20_random.c_sodium_hrtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @sodium_hrtime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sodium_hrtime() #0 {
  %1 = alloca %struct.timeval, align 8
  %2 = call i64 @gettimeofday(%struct.timeval* %1, i32* null)
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 (...) @sodium_misuse()
  br label %6

6:                                                ; preds = %4, %0
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = trunc i64 %8 to i32
  %10 = mul i32 %9, 1000000
  %11 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = add i32 %10, %13
  ret i32 %14
}

declare dso_local i64 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @sodium_misuse(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
