; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_parse.c_start_arglist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_parse.c_start_arglist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.funcall = type { i64, %struct.funcall* }

@funcall_chain = common dso_local global %struct.funcall* null, align 8
@arglist_len = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_arglist() #0 {
  %1 = alloca %struct.funcall*, align 8
  %2 = call i64 @xmalloc(i32 16)
  %3 = inttoptr i64 %2 to %struct.funcall*
  store %struct.funcall* %3, %struct.funcall** %1, align 8
  %4 = load %struct.funcall*, %struct.funcall** @funcall_chain, align 8
  %5 = load %struct.funcall*, %struct.funcall** %1, align 8
  %6 = getelementptr inbounds %struct.funcall, %struct.funcall* %5, i32 0, i32 1
  store %struct.funcall* %4, %struct.funcall** %6, align 8
  %7 = load i64, i64* @arglist_len, align 8
  %8 = load %struct.funcall*, %struct.funcall** %1, align 8
  %9 = getelementptr inbounds %struct.funcall, %struct.funcall* %8, i32 0, i32 0
  store i64 %7, i64* %9, align 8
  store i64 0, i64* @arglist_len, align 8
  %10 = load %struct.funcall*, %struct.funcall** %1, align 8
  store %struct.funcall* %10, %struct.funcall** @funcall_chain, align 8
  ret void
}

declare dso_local i64 @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
