; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_wait.c_bit_waitqueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_wait.c_bit_waitqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone = type { i32, i32* }

@BITS_PER_LONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @bit_waitqueue(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.zone*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @BITS_PER_LONG, align 4
  %9 = icmp eq i32 %8, 32
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i32 5, i32 6
  store i32 %11, i32* %5, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @virt_to_page(i8* %12)
  %14 = call %struct.zone* @page_zone(i32 %13)
  store %struct.zone* %14, %struct.zone** %6, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = ptrtoint i8* %15 to i64
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = shl i64 %16, %18
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = or i64 %19, %21
  store i64 %22, i64* %7, align 8
  %23 = load %struct.zone*, %struct.zone** %6, align 8
  %24 = getelementptr inbounds %struct.zone, %struct.zone* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.zone*, %struct.zone** %6, align 8
  %28 = getelementptr inbounds %struct.zone, %struct.zone* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @hash_long(i64 %26, i32 %29)
  %31 = getelementptr inbounds i32, i32* %25, i64 %30
  ret i32* %31
}

declare dso_local %struct.zone* @page_zone(i32) #1

declare dso_local i32 @virt_to_page(i8*) #1

declare dso_local i64 @hash_long(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
