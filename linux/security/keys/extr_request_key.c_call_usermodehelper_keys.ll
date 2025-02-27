; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_request_key.c_call_usermodehelper_keys.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_request_key.c_call_usermodehelper_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32 }
%struct.subprocess_info = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@umh_keys_init = common dso_local global i32 0, align 4
@umh_keys_cleanup = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i8**, %struct.key*, i32)* @call_usermodehelper_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @call_usermodehelper_keys(i8* %0, i8** %1, i8** %2, %struct.key* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.key*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.subprocess_info*, align 8
  store i8* %0, i8** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8** %2, i8*** %9, align 8
  store %struct.key* %3, %struct.key** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = load i8**, i8*** %8, align 8
  %15 = load i8**, i8*** %9, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = load i32, i32* @umh_keys_init, align 4
  %18 = load i32, i32* @umh_keys_cleanup, align 4
  %19 = load %struct.key*, %struct.key** %10, align 8
  %20 = call %struct.subprocess_info* @call_usermodehelper_setup(i8* %13, i8** %14, i8** %15, i32 %16, i32 %17, i32 %18, %struct.key* %19)
  store %struct.subprocess_info* %20, %struct.subprocess_info** %12, align 8
  %21 = load %struct.subprocess_info*, %struct.subprocess_info** %12, align 8
  %22 = icmp ne %struct.subprocess_info* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %32

26:                                               ; preds = %5
  %27 = load %struct.key*, %struct.key** %10, align 8
  %28 = call i32 @key_get(%struct.key* %27)
  %29 = load %struct.subprocess_info*, %struct.subprocess_info** %12, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @call_usermodehelper_exec(%struct.subprocess_info* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %26, %23
  %33 = load i32, i32* %6, align 4
  ret i32 %33
}

declare dso_local %struct.subprocess_info* @call_usermodehelper_setup(i8*, i8**, i8**, i32, i32, i32, %struct.key*) #1

declare dso_local i32 @key_get(%struct.key*) #1

declare dso_local i32 @call_usermodehelper_exec(%struct.subprocess_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
