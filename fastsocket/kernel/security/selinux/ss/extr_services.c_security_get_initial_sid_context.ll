; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_services.c_security_get_initial_sid_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_services.c_security_get_initial_sid_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SECINITSID_NUM = common dso_local global i64 0, align 8
@initial_sid_to_string = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @security_get_initial_sid_context(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @SECINITSID_NUM, align 8
  %6 = icmp ugt i64 %4, %5
  %7 = zext i1 %6 to i32
  %8 = call i64 @unlikely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %16

11:                                               ; preds = %1
  %12 = load i8**, i8*** @initial_sid_to_string, align 8
  %13 = load i64, i64* %3, align 8
  %14 = getelementptr inbounds i8*, i8** %12, i64 %13
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %2, align 8
  br label %16

16:                                               ; preds = %11, %10
  %17 = load i8*, i8** %2, align 8
  ret i8* %17
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
