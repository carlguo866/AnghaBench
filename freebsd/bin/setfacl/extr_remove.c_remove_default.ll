; ModuleID = '/home/carl/AnghaBench/freebsd/bin/setfacl/extr_remove.c_remove_default.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/setfacl/extr_remove.c_remove_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACL_MAX_ENTRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s: acl_init() failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @remove_default(i32** %0, i8* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i8*, align 8
  store i32** %0, i32*** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32**, i32*** %3, align 8
  %6 = load i32*, i32** %5, align 8
  %7 = call i32 @acl_free(i32* %6)
  %8 = load i32, i32* @ACL_MAX_ENTRIES, align 4
  %9 = call i32* @acl_init(i32 %8)
  %10 = load i32**, i32*** %3, align 8
  store i32* %9, i32** %10, align 8
  %11 = load i32**, i32*** %3, align 8
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @err(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %15)
  br label %17

17:                                               ; preds = %14, %2
  ret i32 0
}

declare dso_local i32 @acl_free(i32*) #1

declare dso_local i32* @acl_init(i32) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
