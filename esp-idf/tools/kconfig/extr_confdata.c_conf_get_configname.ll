; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_confdata.c_conf_get_configname.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_confdata.c_conf_get_configname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"KCONFIG_CONFIG\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c".config\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @conf_get_configname() #0 {
  %1 = alloca i8*, align 8
  %2 = call i8* @getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i8* %2, i8** %1, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = icmp ne i8* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = load i8*, i8** %1, align 8
  br label %8

7:                                                ; preds = %0
  br label %8

8:                                                ; preds = %7, %5
  %9 = phi i8* [ %6, %5 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %7 ]
  ret i8* %9
}

declare dso_local i8* @getenv(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
