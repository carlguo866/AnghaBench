; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_domain.c_tomoyo_write_domain_keeper_policy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_domain.c_tomoyo_write_domain_keeper_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c" from \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tomoyo_write_domain_keeper_policy(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = call i8* @strstr(i8* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = load i8*, i8** %8, align 8
  store i8 0, i8* %14, align 1
  %15 = load i8*, i8** %8, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 6
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @tomoyo_update_domain_keeper_entry(i8* %16, i8* %17, i32 %18, i32 %19)
  store i32 %20, i32* %4, align 4
  br label %26

21:                                               ; preds = %3
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @tomoyo_update_domain_keeper_entry(i8* %22, i8* null, i32 %23, i32 %24)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %21, %13
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @tomoyo_update_domain_keeper_entry(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
