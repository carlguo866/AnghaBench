; ModuleID = '/home/carl/AnghaBench/git/extr_attr.c_git_etc_gitattributes.c'
source_filename = "/home/carl/AnghaBench/git/extr_attr.c_git_etc_gitattributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@git_etc_gitattributes.system_wide = internal global i8* null, align 8
@ETC_GITATTRIBUTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @git_etc_gitattributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @git_etc_gitattributes() #0 {
  %1 = load i8*, i8** @git_etc_gitattributes.system_wide, align 8
  %2 = icmp ne i8* %1, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = load i32, i32* @ETC_GITATTRIBUTES, align 4
  %5 = call i8* @system_path(i32 %4)
  store i8* %5, i8** @git_etc_gitattributes.system_wide, align 8
  br label %6

6:                                                ; preds = %3, %0
  %7 = load i8*, i8** @git_etc_gitattributes.system_wide, align 8
  ret i8* %7
}

declare dso_local i8* @system_path(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
