; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_lib.c_ec_group_do_inverse_ord.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_lib.c_ec_group_do_inverse_ord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ec_group_do_inverse_ord(%struct.TYPE_7__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = bitcast {}** %13 to i32 (%struct.TYPE_7__*, i32*, i32*, i32*)**
  %15 = load i32 (%struct.TYPE_7__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_7__*, i32*, i32*, i32*)** %14, align 8
  %16 = icmp ne i32 (%struct.TYPE_7__*, i32*, i32*, i32*)* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i32 (%struct.TYPE_7__*, i32*, i32*, i32*)**
  %23 = load i32 (%struct.TYPE_7__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_7__*, i32*, i32*, i32*)** %22, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = call i32 %23(%struct.TYPE_7__* %24, i32* %25, i32* %26, i32* %27)
  store i32 %28, i32* %5, align 4
  br label %35

29:                                               ; preds = %4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @ec_field_inverse_mod_ord(%struct.TYPE_7__* %30, i32* %31, i32* %32, i32* %33)
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %29, %17
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @ec_field_inverse_mod_ord(%struct.TYPE_7__*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
