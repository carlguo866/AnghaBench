; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_xdr.c_xdr_nlm_lockargs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_xdr.c_xdr_nlm_lockargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdr_nlm_lockargs(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 5
  %9 = call i32 @xdr_netobj(i32* %6, i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %3, align 4
  br label %55

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 4
  %17 = call i32 @xdr_bool(i32* %14, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %3, align 4
  br label %55

21:                                               ; preds = %13
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 3
  %25 = call i32 @xdr_bool(i32* %22, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %3, align 4
  br label %55

29:                                               ; preds = %21
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = call i32 @xdr_nlm_lock(i32* %30, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %3, align 4
  br label %55

37:                                               ; preds = %29
  %38 = load i32*, i32** %4, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = call i32 @xdr_bool(i32* %38, i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %3, align 4
  br label %55

45:                                               ; preds = %37
  %46 = load i32*, i32** %4, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = call i32 @xdr_int(i32* %46, i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %3, align 4
  br label %55

53:                                               ; preds = %45
  %54 = load i32, i32* @TRUE, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %51, %43, %35, %27, %19, %11
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @xdr_netobj(i32*, i32*) #1

declare dso_local i32 @xdr_bool(i32*, i32*) #1

declare dso_local i32 @xdr_nlm_lock(i32*, i32*) #1

declare dso_local i32 @xdr_int(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
