; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_db.c__citrus_db_get_number_of_entries.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_db.c__citrus_db_get_number_of_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_db = type { i32 }
%struct._citrus_db_header_x = type { i32 }
%struct._memstream = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_citrus_db_get_number_of_entries(%struct._citrus_db* %0) #0 {
  %2 = alloca %struct._citrus_db*, align 8
  %3 = alloca %struct._citrus_db_header_x*, align 8
  %4 = alloca %struct._memstream, align 4
  store %struct._citrus_db* %0, %struct._citrus_db** %2, align 8
  %5 = load %struct._citrus_db*, %struct._citrus_db** %2, align 8
  %6 = getelementptr inbounds %struct._citrus_db, %struct._citrus_db* %5, i32 0, i32 0
  %7 = call i32 @_memstream_bind(%struct._memstream* %4, i32* %6)
  %8 = call %struct._citrus_db_header_x* @_memstream_getregion(%struct._memstream* %4, i32* null, i32 4)
  store %struct._citrus_db_header_x* %8, %struct._citrus_db_header_x** %3, align 8
  %9 = load %struct._citrus_db_header_x*, %struct._citrus_db_header_x** %3, align 8
  %10 = getelementptr inbounds %struct._citrus_db_header_x, %struct._citrus_db_header_x* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @be32toh(i32 %11)
  %13 = trunc i64 %12 to i32
  ret i32 %13
}

declare dso_local i32 @_memstream_bind(%struct._memstream*, i32*) #1

declare dso_local %struct._citrus_db_header_x* @_memstream_getregion(%struct._memstream*, i32*, i32) #1

declare dso_local i64 @be32toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
