; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_getrpcent.c_getrpcbyname.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_getrpcent.c_getrpcbyname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcent = type { i32 }
%union.key = type { i8* }

@wrap_getrpcbyname_r = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpcent* @getrpcbyname(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %union.key, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast %union.key* %3 to i8**
  store i8* %4, i8** %5, align 8
  %6 = load i32, i32* @wrap_getrpcbyname_r, align 4
  %7 = getelementptr inbounds %union.key, %union.key* %3, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = call %struct.rpcent* @getrpc(i32 %6, i8* %8)
  ret %struct.rpcent* %9
}

declare dso_local %struct.rpcent* @getrpc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
