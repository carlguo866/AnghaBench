; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_svcauth_gss.c_total_buf_len.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_svcauth_gss.c_total_buf_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_buf = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_buf*)* @total_buf_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @total_buf_len(%struct.xdr_buf* %0) #0 {
  %2 = alloca %struct.xdr_buf*, align 8
  store %struct.xdr_buf* %0, %struct.xdr_buf** %2, align 8
  %3 = load %struct.xdr_buf*, %struct.xdr_buf** %2, align 8
  %4 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %3, i32 0, i32 2
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i64 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.xdr_buf*, %struct.xdr_buf** %2, align 8
  %10 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %8, %11
  %13 = load %struct.xdr_buf*, %struct.xdr_buf** %2, align 8
  %14 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %12, %18
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
