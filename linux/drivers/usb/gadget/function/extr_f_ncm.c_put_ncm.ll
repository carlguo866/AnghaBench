; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_ncm.c_put_ncm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_ncm.c_put_ncm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i32, i32)* @put_ncm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_ncm(i32** %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %18 [
    i32 1, label %8
    i32 2, label %13
  ]

8:                                                ; preds = %3
  %9 = load i32, i32* %6, align 4
  %10 = load i32**, i32*** %4, align 8
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @put_unaligned_le16(i32 %9, i32* %11)
  br label %20

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32**, i32*** %4, align 8
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @put_unaligned_le32(i32 %14, i32* %16)
  br label %20

18:                                               ; preds = %3
  %19 = call i32 (...) @BUG()
  br label %20

20:                                               ; preds = %18, %13, %8
  %21 = load i32, i32* %5, align 4
  %22 = load i32**, i32*** %4, align 8
  %23 = load i32*, i32** %22, align 8
  %24 = zext i32 %21 to i64
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32* %25, i32** %22, align 8
  ret void
}

declare dso_local i32 @put_unaligned_le16(i32, i32*) #1

declare dso_local i32 @put_unaligned_le32(i32, i32*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
