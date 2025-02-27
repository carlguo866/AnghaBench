; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_compat.c_do_unlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_compat.c_do_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.editor_baton = type { i32 }
%struct.change_node = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*)* @do_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @do_unlock(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.editor_baton*, align 8
  %8 = alloca %struct.change_node*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.editor_baton*
  store %struct.editor_baton* %10, %struct.editor_baton** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load %struct.editor_baton*, %struct.editor_baton** %7, align 8
  %13 = getelementptr inbounds %struct.editor_baton, %struct.editor_baton* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.change_node* @insert_change(i8* %11, i32 %14)
  store %struct.change_node* %15, %struct.change_node** %8, align 8
  %16 = load i32, i32* @TRUE, align 4
  %17 = load %struct.change_node*, %struct.change_node** %8, align 8
  %18 = getelementptr inbounds %struct.change_node, %struct.change_node* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %19
}

declare dso_local %struct.change_node* @insert_change(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
