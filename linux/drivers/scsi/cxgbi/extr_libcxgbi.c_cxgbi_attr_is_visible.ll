; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_attr_is_visible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_attr_is_visible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_IRUGO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgbi_attr_is_visible(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %17 [
    i32 164, label %7
    i32 159, label %12
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %11 [
    i32 160, label %9
    i32 163, label %9
    i32 161, label %9
    i32 162, label %9
  ]

9:                                                ; preds = %7, %7, %7, %7
  %10 = load i32, i32* @S_IRUGO, align 4
  store i32 %10, i32* %3, align 4
  br label %18

11:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %18

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %16 [
    i32 141, label %14
    i32 140, label %14
    i32 149, label %14
    i32 155, label %14
    i32 157, label %14
    i32 156, label %14
    i32 152, label %14
    i32 136, label %14
    i32 135, label %14
    i32 134, label %14
    i32 133, label %14
    i32 146, label %14
    i32 142, label %14
    i32 147, label %14
    i32 150, label %14
    i32 143, label %14
    i32 137, label %14
    i32 154, label %14
    i32 153, label %14
    i32 132, label %14
    i32 130, label %14
    i32 129, label %14
    i32 139, label %14
    i32 128, label %14
    i32 138, label %14
    i32 151, label %14
    i32 158, label %14
    i32 144, label %14
    i32 131, label %14
    i32 148, label %14
    i32 145, label %14
  ]

14:                                               ; preds = %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12
  %15 = load i32, i32* @S_IRUGO, align 4
  store i32 %15, i32* %3, align 4
  br label %18

16:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %17, %16, %14, %11, %9
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
