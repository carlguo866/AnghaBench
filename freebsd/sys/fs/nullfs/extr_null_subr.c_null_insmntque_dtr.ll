; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nullfs/extr_null_subr.c_null_insmntque_dtr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nullfs/extr_null_subr.c_null_insmntque_dtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.null_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnode*, i8*)* @null_insmntque_dtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @null_insmntque_dtr(%struct.vnode* %0, i8* %1) #0 {
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca i8*, align 8
  store %struct.vnode* %0, %struct.vnode** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = bitcast i8* %5 to %struct.null_node*
  %7 = getelementptr inbounds %struct.null_node, %struct.null_node* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @vput(i32 %8)
  %10 = load %struct.vnode*, %struct.vnode** %3, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @null_destroy_proto(%struct.vnode* %10, i8* %11)
  ret void
}

declare dso_local i32 @vput(i32) #1

declare dso_local i32 @null_destroy_proto(%struct.vnode*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
