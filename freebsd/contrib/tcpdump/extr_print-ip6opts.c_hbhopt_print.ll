; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ip6opts.c_hbhopt_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ip6opts.c_hbhopt_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.ip6_hbh = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"HBH \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"[|HBH]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hbhopt_print(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ip6_hbh*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = bitcast i32* %8 to %struct.ip6_hbh*
  store %struct.ip6_hbh* %9, %struct.ip6_hbh** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.ip6_hbh*, %struct.ip6_hbh** %6, align 8
  %11 = getelementptr inbounds %struct.ip6_hbh, %struct.ip6_hbh* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ND_TCHECK(i32 %12)
  %14 = load %struct.ip6_hbh*, %struct.ip6_hbh** %6, align 8
  %15 = getelementptr inbounds %struct.ip6_hbh, %struct.ip6_hbh* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  %18 = shl i32 %17, 3
  store i32 %18, i32* %7, align 4
  %19 = load %struct.ip6_hbh*, %struct.ip6_hbh** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = getelementptr inbounds %struct.ip6_hbh, %struct.ip6_hbh* %19, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ND_TCHECK2(i32 %22, i32 %20)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([5 x i8]* @.str to %struct.TYPE_5__*))
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = load %struct.ip6_hbh*, %struct.ip6_hbh** %6, align 8
  %33 = bitcast %struct.ip6_hbh* %32 to i32*
  %34 = getelementptr inbounds i32, i32* %33, i64 4
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = sub i64 %36, 4
  %38 = trunc i64 %37 to i32
  %39 = call i32 @ip6_opt_print(%struct.TYPE_5__* %31, i32* %34, i32 %38)
  br label %40

40:                                               ; preds = %30, %2
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %45

42:                                               ; No predecessors!
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([7 x i8]* @.str.1 to %struct.TYPE_5__*))
  store i32 -1, i32* %3, align 4
  br label %45

45:                                               ; preds = %42, %40
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_5__*) #1

declare dso_local i32 @ip6_opt_print(%struct.TYPE_5__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
