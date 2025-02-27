; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec_parser/extr_mac_veriexec_parser.c_hexchar_to_byte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec_parser/extr_mac_veriexec_parser.c_hexchar_to_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8)* @hexchar_to_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @hexchar_to_byte(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  %4 = load i8, i8* %3, align 1
  %5 = call i64 @isdigit(i8 zeroext %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load i8, i8* %3, align 1
  %9 = zext i8 %8 to i32
  %10 = sub nsw i32 %9, 48
  %11 = trunc i32 %10 to i8
  store i8 %11, i8* %2, align 1
  br label %29

12:                                               ; preds = %1
  %13 = load i8, i8* %3, align 1
  %14 = call i64 @isupper(i8 zeroext %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load i8, i8* %3, align 1
  %18 = zext i8 %17 to i32
  %19 = sub nsw i32 %18, 65
  %20 = add nsw i32 %19, 10
  br label %26

21:                                               ; preds = %12
  %22 = load i8, i8* %3, align 1
  %23 = zext i8 %22 to i32
  %24 = sub nsw i32 %23, 97
  %25 = add nsw i32 %24, 10
  br label %26

26:                                               ; preds = %21, %16
  %27 = phi i32 [ %20, %16 ], [ %25, %21 ]
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %2, align 1
  br label %29

29:                                               ; preds = %26, %7
  %30 = load i8, i8* %2, align 1
  ret i8 %30
}

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i64 @isupper(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
