; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_ncm.c_gncm_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_ncm.c_gncm_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_composite_dev = type { i32 }

@f_ncm = common dso_local global i32 0, align 4
@f_ncm_inst = common dso_local global i32 0, align 4
@otg_desc = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_composite_dev*)* @gncm_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gncm_unbind(%struct.usb_composite_dev* %0) #0 {
  %2 = alloca %struct.usb_composite_dev*, align 8
  store %struct.usb_composite_dev* %0, %struct.usb_composite_dev** %2, align 8
  %3 = load i32, i32* @f_ncm, align 4
  %4 = call i32 @IS_ERR_OR_NULL(i32 %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @f_ncm, align 4
  %8 = call i32 @usb_put_function(i32 %7)
  br label %9

9:                                                ; preds = %6, %1
  %10 = load i32, i32* @f_ncm_inst, align 4
  %11 = call i32 @IS_ERR_OR_NULL(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* @f_ncm_inst, align 4
  %15 = call i32 @usb_put_function_instance(i32 %14)
  br label %16

16:                                               ; preds = %13, %9
  %17 = load i32**, i32*** @otg_desc, align 8
  %18 = getelementptr inbounds i32*, i32** %17, i64 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @kfree(i32* %19)
  %21 = load i32**, i32*** @otg_desc, align 8
  %22 = getelementptr inbounds i32*, i32** %21, i64 0
  store i32* null, i32** %22, align 8
  ret i32 0
}

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @usb_put_function(i32) #1

declare dso_local i32 @usb_put_function_instance(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
