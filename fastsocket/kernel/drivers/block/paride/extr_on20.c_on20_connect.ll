; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_on20.c_on20_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_on20.c_on20_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @on20_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on20_connect(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = call i32 (...) @r0()
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  store i32 %3, i32* %5, align 4
  %6 = call i32 (...) @r2()
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  %9 = call i32 @w2(i32 4)
  %10 = call i32 @w0(i32 0)
  %11 = call i32 @w2(i32 12)
  %12 = call i32 @w2(i32 4)
  %13 = call i32 @w2(i32 6)
  %14 = call i32 @w2(i32 4)
  %15 = call i32 @w2(i32 6)
  %16 = call i32 @w2(i32 4)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = call i32 @op(i32 2)
  %23 = call i32 @vl(i32 8)
  %24 = call i32 @op(i32 2)
  %25 = call i32 @vl(i32 9)
  br label %31

26:                                               ; preds = %1
  %27 = call i32 @op(i32 2)
  %28 = call i32 @vl(i32 0)
  %29 = call i32 @op(i32 2)
  %30 = call i32 @vl(i32 8)
  br label %31

31:                                               ; preds = %26, %21
  ret void
}

declare dso_local i32 @r0(...) #1

declare dso_local i32 @r2(...) #1

declare dso_local i32 @w2(i32) #1

declare dso_local i32 @w0(i32) #1

declare dso_local i32 @op(i32) #1

declare dso_local i32 @vl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
