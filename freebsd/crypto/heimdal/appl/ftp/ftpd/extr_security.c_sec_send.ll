; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_security.c_sec_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_security.c_sec_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i8*, i32, i32, i8**)* }

@mech = common dso_local global %struct.TYPE_2__* null, align 8
@app_data = common dso_local global i32 0, align 4
@data_prot = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @sec_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sec_send(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mech, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (i32, i8*, i32, i32, i8**)*, i32 (i32, i8*, i32, i32, i8**)** %10, align 8
  %12 = load i32, i32* @app_data, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @data_prot, align 4
  %16 = call i32 %11(i32 %12, i8* %13, i32 %14, i32 %15, i8** %8)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @htonl(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %4, align 4
  %20 = bitcast i32* %7 to i8*
  %21 = call i32 @block_write(i32 %19, i8* %20, i32 4)
  %22 = load i32, i32* %4, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @ntohl(i32 %24)
  %26 = call i32 @block_write(i32 %22, i8* %23, i32 %25)
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @free(i8* %27)
  %29 = load i32, i32* %6, align 4
  ret i32 %29
}

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @block_write(i32, i8*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
