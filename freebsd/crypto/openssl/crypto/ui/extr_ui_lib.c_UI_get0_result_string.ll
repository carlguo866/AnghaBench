; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ui/extr_ui_lib.c_UI_get0_result_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ui/extr_ui_lib.c_UI_get0_result_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @UI_get0_result_string(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %12 [
    i32 129, label %7
    i32 128, label %7
    i32 130, label %11
    i32 133, label %11
    i32 131, label %11
    i32 132, label %11
  ]

7:                                                ; preds = %1, %1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %2, align 8
  br label %13

11:                                               ; preds = %1, %1, %1, %1
  br label %12

12:                                               ; preds = %1, %11
  store i8* null, i8** %2, align 8
  br label %13

13:                                               ; preds = %12, %7
  %14 = load i8*, i8** %2, align 8
  ret i8* %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
