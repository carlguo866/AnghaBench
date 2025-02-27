; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_crypto.c__hx509_private_key_export.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_crypto.c__hx509_private_key_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { {}* }

@HX509_UNIMPLEMENTED_OPERATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_hx509_private_key_export(i32 %0, %struct.TYPE_6__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = bitcast {}** %13 to i32 (i32, %struct.TYPE_6__*, i32, i32*)**
  %15 = load i32 (i32, %struct.TYPE_6__*, i32, i32*)*, i32 (i32, %struct.TYPE_6__*, i32, i32*)** %14, align 8
  %16 = icmp eq i32 (i32, %struct.TYPE_6__*, i32, i32*)* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @hx509_clear_error_string(i32 %18)
  %20 = load i32, i32* @HX509_UNIMPLEMENTED_OPERATION, align 4
  store i32 %20, i32* %5, align 4
  br label %33

21:                                               ; preds = %4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = bitcast {}** %25 to i32 (i32, %struct.TYPE_6__*, i32, i32*)**
  %27 = load i32 (i32, %struct.TYPE_6__*, i32, i32*)*, i32 (i32, %struct.TYPE_6__*, i32, i32*)** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 %27(i32 %28, %struct.TYPE_6__* %29, i32 %30, i32* %31)
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %21, %17
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @hx509_clear_error_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
